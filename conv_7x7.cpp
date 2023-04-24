///////////////////////////////////////////////////////////////////////////////
// Author:      Virat Agarwal
// Course:      ECE8893 - Parallel Programming for FPGAs
// Filename:    conv_7x7.cpp
// Description: Implement a functionally-correct synthesizable 7x7 convolution 
//              for a single tile block without any optimizations
///////////////////////////////////////////////////////////////////////////////
#include "utils.h"

/*void conv_7x7(
    fm_t Y_buf[OUT_BUF_DEPTH][OUT_BUF_HEIGHT][OUT_BUF_WIDTH], 
    fm_t X_buf[IN_BUF_DEPTH][IN_BUF_HEIGHT][IN_BUF_WIDTH],
    wt_t W_buf[OUT_BUF_DEPTH][IN_BUF_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH],
    wt_t B_buf[OUT_BUF_DEPTH]
)*/
void conv_5x5(
    fm_t Y_buf[OUT_BUF_DEPTH][OUT_BUF_HEIGHT][OUT_BUF_WIDTH],
    fm_t X_buf[IN_BUF_DEPTH][IN_BUF_HEIGHT][IN_BUF_WIDTH],
    wt_t W_buf[OUT_BUF_DEPTH][IN_BUF_DEPTH][KERNEL_HEIGHT][KERNEL_WIDTH]
)
{
    //---------------------------------------------------------------------------
    // Part B: Implement a trivial functionally-correct single-tile convolution.
    //
    //         This should have an overall latency in the order of 22-23 seconds.
    //
    //         If it's worse than trivial, it may be worth fixing this first.
    //         Otherwise, achieving the target latency with a worse-than-trivial
    //         baseline may be difficult!
    //
    // TODO: Your code for Part B goes here. 
    //---------------------------------------------------------------------------

    // Loading the iimage locally
    for (int feature = 0; feature < OUT_BUF_DEPTH; feature++) {
        //for (int i = 0; i < TILE_HEIGHT; i += 2) {
        for (int i = 0; i < TILE_HEIGHT; i++) {
            //for (int j = 0; j < TILE_WIDTH; j += 2) {
            for (int j = 0; j < TILE_WIDTH; j++) {
                fm_t tmp = 0;
                for (int k = 0; k < IN_BUF_DEPTH; k++) {
                    for (int weight_row = 0; weight_row < KERNEL_HEIGHT; weight_row++) {
                        int row = i + weight_row;
                        for (int weight_column = 0; weight_column < KERNEL_WIDTH; weight_column++) {
                            int column = j + weight_column;
                            tmp += W_buf[feature][k][weight_row][weight_column] * X_buf[k][row][column];
                        }
                    }
                }
                //int tmp_row = i / 2;
                //int tmp_column = j / 2;
                //Y_buf[feature][tmp_row][tmp_column] = B_buf[feature] + tmp;

                // ReLU in-place
                Y_buf[feature][i][j] = (tmp > 0) ? (tmp) : (fm_t) 0;
            }
        }
    }
}

void max_pool(
    fm_t conv_in_buf[OUT_BUF_DEPTH][OUT_BUF_HEIGHT][OUT_BUF_WIDTH],
    fm_t max_pool_out_buf[OUT_MAX_POOL_BUF_DEPTH][OUT_MAX_POOL_BUF_HEIGHT][OUT_MAX_POOL_BUF_WIDTH],
    int dim
)
{
    // Loading the image locally
    for (int depth = 0; depth < OUT_MAX_POOL_BUF_DEPTH; depth++) {
        for (int i = 0; i < OUT_MAX_POOL_BUF_HEIGHT; i++) {
            for (int j = 0; j < OUT_MAX_POOL_BUF_WIDTH; j++) {
                fm_t max = -1;
                for (int ii = 0; ii < dim; ii++) {
                    int row = i * dim + ii;
                    for (int jj = 0; jj < dim; jj++) {
                        int col = j * dim + jj;
                        max = (conv_in_buf[depth][row][col] > max) ? conv_in_buf[depth][row][col] : max;
                    }
                }
                max_pool_out_buf[depth][i][j] = max;
            }
        }
    }
}

void quarter_drop(
    fm_t max_pool_out_buf[OUT_MAX_POOL_BUF_DEPTH][OUT_MAX_POOL_BUF_HEIGHT][OUT_MAX_POOL_BUF_WIDTH]
)
{

    // Loading the image locally
    for (int depth = 0; depth < OUT_MAX_POOL_BUF_DEPTH; depth++) {
        for (int i = 0; i < OUT_MAX_POOL_BUF_HEIGHT; i++) {
            for (int j = 0; j < OUT_MAX_POOL_BUF_WIDTH; j++) {
                int rand_no = pseudo_random(31, (depth * OUT_MAX_POOL_BUF_DEPTH + i * OUT_MAX_POOL_BUF_HEIGHT + j * OUT_MAX_POOL_BUF_WIDTH));
                if (!(rand_no % 4)) {
                    max_pool_out_buf[depth][i][j] = 0;
                }
            }
        }
    }
}

void linear_layer(
    fm_t linear_input[OUT_MAX_POOL_FM_DEPTH * OUT_MAX_POOL_FM_HEIGHT * OUT_MAX_POOL_FM_WIDTH],
    wt_t linear_weights[IN_LINEAR_LENGTH][OUT_LINEAR_LENGTH],
    fm_t output_feature_map[OUT_LINEAR_LENGTH]
)
{
    for (int i = 0; i < OUT_LINEAR_LENGTH; i++) {
        fm_t temp = 0;
        for (int j = 0; j < IN_LINEAR_LENGTH; j++) {
            temp += linear_input[j] * linear_weights[j][i];
        }
        output_feature_map[i] = temp;
    }
}
