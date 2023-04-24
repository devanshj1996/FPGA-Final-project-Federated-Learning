///////////////////////////////////////////////////////////////////////////////
// Author:      <>
// Course:      ECE8893 - Parallel Programming for FPGAs
// Filename:    tiled_conv.cpp
// Description: Implement a functionally-correct synthesizable tiling-based 
//              convolution for ResNet-50's first 7x7 layer with an 
//              HD input image.
//              
// Note: Do not use pragmas other than the existing ones in Part B.
///////////////////////////////////////////////////////////////////////////////
#include "utils.h"

/*void tiled_conv(
    fm_t input_feature_map[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH],
    wt_t layer_weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    wt_t layer_bias[OUT_FM_DEPTH],
    fm_t output_feature_map[OUT_FM_DEPTH][OUT_FM_HEIGHT][OUT_FM_WIDTH]
)*/

void tiled_conv(
    fm_t input_feature_map[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH],
    wt_t layer_weights[OUT_CONV_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    wt_t linear_weights[IN_LINEAR_LENGTH][OUT_LINEAR_LENGTH],
    fm_t output_feature_map[OUT_LINEAR_LENGTH]
)
{
    //--------------------------------------------------------------------------
    // Defines interface IO ports for HLS. 
    //--------------------------------------------------------------------------
    /*#pragma HLS INTERFACE m_axi depth=1  port=input_feature_map   bundle=fm
    #pragma HLS INTERFACE m_axi depth=1  port=layer_weights       bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=layer_bias          bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=output_feature_map  bundle=fm
    
    #pragma HLS INTERFACE s_axilite register	port=return*/

    #pragma HLS INTERFACE m_axi depth=1  port=input_feature_map   bundle=fm
    #pragma HLS INTERFACE m_axi depth=1  port=layer_weights       bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=linear_weights       bundle=wt
    #pragma HLS INTERFACE m_axi depth=1  port=output_feature_map  bundle=fm

    #pragma HLS INTERFACE s_axilite register	port=return
    
    //--------------------------------------------------------------------------
    // On-chip buffers
    // You should NOT modify the buffer dimensions!
    //--------------------------------------------------------------------------
    /*fm_t conv_in_buf[IN_BUF_DEPTH][IN_BUF_HEIGHT][IN_BUF_WIDTH];
    wt_t conv_wt_buf[OUT_BUF_DEPTH][IN_BUF_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH];
    wt_t conv_bias_buf[OUT_BUF_DEPTH];
    fm_t conv_out_buf[OUT_BUF_DEPTH][OUT_BUF_HEIGHT][OUT_BUF_WIDTH] = {0};*/

    fm_t conv_in_buf[IN_BUF_DEPTH][IN_BUF_HEIGHT][IN_BUF_WIDTH];
    wt_t conv_wt_buf[OUT_BUF_DEPTH][IN_BUF_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH];
    fm_t conv_out_buf[OUT_BUF_DEPTH][OUT_BUF_HEIGHT][OUT_BUF_WIDTH] = { 0 };
    //fm_t conv_output[OUT_CONV_FM_DEPTH][OUT_CONV_FM_HEIGHT][OUT_CONV_FM_WIDTH];
    fm_t max_pool_out_buf[OUT_MAX_POOL_BUF_DEPTH][OUT_MAX_POOL_BUF_HEIGHT][OUT_MAX_POOL_BUF_WIDTH];
    fm_t layer1_output[OUT_MAX_POOL_FM_DEPTH][OUT_MAX_POOL_FM_HEIGHT][OUT_MAX_POOL_FM_WIDTH];
    fm_t linear_input[OUT_MAX_POOL_FM_DEPTH * OUT_MAX_POOL_FM_HEIGHT * OUT_MAX_POOL_FM_WIDTH];
    
    //--------------------------------------------------------------------------
    // Process each tile iteratively
    //--------------------------------------------------------------------------
    TILE_ROW:
    for(int ti = 0; ti < N_TILE_ROWS; ti++)
    {
        TILE_COL:
        for(int tj = 0; tj < N_TILE_COLS; tj++)
        {
            std::cout << "Processing Tile " << ti * N_TILE_COLS + tj + 1;
            std::cout << "/" << N_TILE_ROWS * N_TILE_COLS << std::endl;    

            //--------------------------------------------------------------------------
            // TODO: Your code for Task B and Task C goes here 
            //
            // Implement the required code to run convolution on an entire tile. 
            // Refer to utils.cpp for the required functions
            //
            // Hint: You need to split the filter kernels into sub-groups 
            //       for processing.
            //--------------------------------------------------------------------------
            load_input_tile_block_from_DRAM(conv_in_buf, input_feature_map, ti, tj);
            for (int i = 0; i < OUT_CONV_FM_DEPTH / OUT_BUF_DEPTH; i++) { 
                //load_layer_params_from_DRAM(conv_wt_buf, conv_bias_buf, layer_weights, layer_bias, i);
                load_layer_params_from_DRAM(conv_wt_buf, layer_weights, i);
                //conv_7x7(conv_out_buf, conv_in_buf, conv_wt_buf, conv_bias_buf);
                conv_5x5(conv_out_buf, conv_in_buf, conv_wt_buf);
                max_pool(conv_out_buf, max_pool_out_buf, POOL_DIM);
                quarter_drop(max_pool_out_buf);
                store_output_tile_to_DRAM(layer1_output, max_pool_out_buf, ti, tj, i);
            }
        }

        for (int tp = 0; tp < OUT_MAX_POOL_BUF_HEIGHT; tp++) {
            int row_no = ti * OUT_MAX_POOL_BUF_HEIGHT + tp;
            for (int tj = 0; tj < OUT_MAX_POOL_FM_WIDTH; tj++) {
                linear_input[row_no * OUT_MAX_POOL_FM_WIDTH + tj] = layer1_output[OUT_MAX_POOL_FM_DEPTH][row_no][tj];
            }
        }
    }

    linear_layer(linear_input, linear_weights, output_feature_map);
}
