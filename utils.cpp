///////////////////////////////////////////////////////////////////////////////
// Course:      ECE8893 - Parallel Programming for FPGAs
// Filename:    utils.cpp
// Description: Utility functions to implement tiling-based convolution 
//
// Note:        Modify/complete the functions as required by your design. 
//
//              You are free to create any additional functions you may need
//              for your implementation.
///////////////////////////////////////////////////////////////////////////////
#include "utils.h"
#include <iostream>

using namespace std;

//--------------------------------------------------------------------------
// Function to load an input tile block from from off-chip DRAM 
// to on-chip BRAM.
//
// TODO: This is an incomplete function that you need to modify  
//       to handle the border conditions appropriately while loading.
//--------------------------------------------------------------------------
void load_input_tile_block_from_DRAM (
    fm_t in_fm_buf[IN_BUF_DEPTH][IN_BUF_HEIGHT][IN_BUF_WIDTH], 
    fm_t in_fm[IN_FM_DEPTH][IN_FM_HEIGHT][IN_FM_WIDTH], 
    int  ti, 
    int  tj 
)
{
    const int height_offset = ti * TILE_HEIGHT;  
    const int width_offset  = tj * TILE_WIDTH;

    const int P = PADDING;

    INPUT_BUFFER_DEPTH:
    for(int c = 0; c < IN_BUF_DEPTH; c++)
    {
        INPUT_BUFFER_HEIGHT:
        for(int i = 0; i < IN_BUF_HEIGHT; i++)
        {
            fm_t buf_row = height_offset + i;
            INPUT_BUFFER_WIDTH:
            for(int j = 0; j < IN_BUF_WIDTH; j++)
            {
                fm_t buf_col = width_offset + j;
                if (buf_row < P || buf_col < P || buf_row >= (IN_FM_HEIGHT + P) || buf_col >= (IN_FM_WIDTH + P)) {
                    in_fm_buf[c][i][j] = (fm_t) 0;
                } else {
                    in_fm_buf[c][i][j] = in_fm[c][height_offset + i - P][width_offset + j - P]; 
                }
                // TODO: Handle border features here
                //
                // Hint: Either load 0 or input feature into 
                //       the buffer based on border conditions
                //in_fm_buf[c][i][j] = 0; // Just a placeholder
            }
        }
    }
}

//--------------------------------------------------------------------------
// Function to load layer parameters (weights and bias) for convolution.
//
// This function can be used as-is in your design. However, you are free to
// add pragmas, restructure code, etc. depending on your way of optimization.
//--------------------------------------------------------------------------
/*void load_layer_params_from_DRAM(
    wt_t weight_buf[OUT_BUF_DEPTH][IN_BUF_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    wt_t bias_buf[OUT_BUF_DEPTH],
    wt_t weights[OUT_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    wt_t bias[OUT_FM_DEPTH],
    int  kernel_group
)
{
    const int kernel_offset  = kernel_group * OUT_BUF_DEPTH;

    WEIGHT_KERNEL_NUM:
    for(int f = 0; f < OUT_BUF_DEPTH; f++)
    {
        WEIGHT_KERNEL_DEPTH:
        for(int c = 0; c < IN_BUF_DEPTH; c++)
        {
            WEIGHT_KERNEL_HEIGHT:
            for(int kh = 0; kh < 7; kh++)
	        {
                WEIGHT_KERNEL_WIDTH:
	            for(int kw = 0; kw < 7; kw++)
	            {
	                weight_buf[f][c][kh][kw] = weights[kernel_offset + f][c][kh][kw];
                }
            }
        }
    }
    
    BIAS:
    for(int f = 0; f < OUT_BUF_DEPTH; f++)
    {
        bias_buf[f] = bias[kernel_offset + f];
    }

}*/

void load_layer_params_from_DRAM(
    wt_t weight_buf[OUT_BUF_DEPTH][IN_BUF_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    wt_t weights[OUT_CONV_FM_DEPTH][IN_FM_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    int  kernel_group
)
{
    const int kernel_offset = kernel_group * OUT_BUF_DEPTH;

WEIGHT_KERNEL_NUM:
    for (int f = 0; f < OUT_BUF_DEPTH; f++)
    {
    WEIGHT_KERNEL_DEPTH:
        for (int c = 0; c < IN_BUF_DEPTH; c++)
        {
        WEIGHT_KERNEL_HEIGHT:
            for (int kh = 0; kh < KERNEL_HEIGHT; kh++)
            {
            WEIGHT_KERNEL_WIDTH:
                for (int kw = 0; kw < KERNEL_WIDTH; kw++)
                {
                    weight_buf[f][c][kh][kw] = weights[kernel_offset + f][c][kh][kw];
                }
            }
        }
    }
}

//--------------------------------------------------------------------------
// Function to store complete output tile block from BRAM to DRAM.
//
// In-place ReLU has been incorporated for convenience.
//
// This function can be used as-is in your design. However, you are free to
// add pragmas, restructure code, etc. depending on your way of optimization.
//--------------------------------------------------------------------------
/*void store_output_tile_to_DRAM(
    fm_t conv_out_fm[OUT_CONV_FM_DEPTH][OUT_CONV_FM_HEIGHT][OUT_CONV_FM_WIDTH],
    fm_t out_fm_buf[OUT_BUF_DEPTH][OUT_BUF_HEIGHT][OUT_BUF_WIDTH], 
    int  ti,
    int  tj,
    int  kernel_group
)
{
    const int depth_offset  = kernel_group * OUT_BUF_DEPTH;
    const int height_offset = ti * OUT_BUF_HEIGHT;
    const int width_offset  = tj * OUT_BUF_WIDTH;

    OUTPUT_BUFFER_DEPTH:
    for(int f = 0; f < OUT_BUF_DEPTH; f++)
    {
        OUTPUT_BUFFER_HEIGHT:
        for(int i = 0; i < OUT_BUF_HEIGHT; i++)
        {
            OUTPUT_BUFFER_WIDTH:
            for(int j = 0; j < OUT_BUF_WIDTH; j++)
            {
                // ReLU in-place
                //if (out_fm_buf[f][i][j] < (fm_t)0)
                //{
                //    out_fm[depth_offset + f][height_offset + i][width_offset + j] = (fm_t) 0;
                //}
                //else
                //{
                //    out_fm[depth_offset + f][height_offset + i][width_offset + j] = out_fm_buf[f][i][j];
                //}
                conv_out_fm[depth_offset + f][height_offset + i][width_offset + j] = out_fm_buf[f][i][j];
            }
        }
    }
}*/

void store_output_tile_to_DRAM(
    fm_t conv_out_fm[OUT_MAX_POOL_FM_DEPTH][OUT_MAX_POOL_FM_HEIGHT][OUT_MAX_POOL_FM_WIDTH],
    fm_t out_fm_buf[OUT_MAX_POOL_BUF_DEPTH][OUT_MAX_POOL_BUF_HEIGHT][OUT_MAX_POOL_BUF_WIDTH],
    int  ti,
    int  tj,
    int  kernel_group
)
{
    const int depth_offset = kernel_group * OUT_MAX_POOL_BUF_DEPTH;
    const int height_offset = ti * OUT_MAX_POOL_BUF_HEIGHT;
    const int width_offset = tj * OUT_MAX_POOL_BUF_WIDTH;

OUTPUT_BUFFER_DEPTH:
    for (int f = 0; f < OUT_MAX_POOL_BUF_DEPTH; f++)
    {
    OUTPUT_BUFFER_HEIGHT:
        for (int i = 0; i < OUT_MAX_POOL_BUF_HEIGHT; i++)
        {
        OUTPUT_BUFFER_WIDTH:
            for (int j = 0; j < OUT_MAX_POOL_BUF_WIDTH; j++)
            {
                // ReLU in-place
                /*if (out_fm_buf[f][i][j] < (fm_t)0)
                {
                    out_fm[depth_offset + f][height_offset + i][width_offset + j] = (fm_t) 0;
                }
                else
                {
                    out_fm[depth_offset + f][height_offset + i][width_offset + j] = out_fm_buf[f][i][j];
                }*/
                conv_out_fm[depth_offset + f][height_offset + i][width_offset + j] = out_fm_buf[f][i][j];
            	//cout<<conv_out_fm[depth_offset + f][height_offset + i][width_offset + j]<<endl;
	    }
        }
    }
}

unsigned int pseudo_random(unsigned int seed, int load) {
    static ap_uint<32> lfsr;
    if (load == 1)
        lfsr = seed;
    bool b_32 = lfsr.get_bit(32 - 32);
    bool b_22 = lfsr.get_bit(32 - 22);
    bool b_2 = lfsr.get_bit(32 - 2);
    bool b_1 = lfsr.get_bit(32 - 1);
    bool new_bit = b_32 ^ b_22 ^ b_2 ^ b_1;
    lfsr = lfsr >> 1;
    lfsr.set_bit(31, new_bit);

    return lfsr.to_uint();
}
