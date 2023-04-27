// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Version: 2022.1.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_73_2_VITIS_LOOP_74_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        max_pool_out_buf_V_0_address0,
        max_pool_out_buf_V_0_ce0,
        max_pool_out_buf_V_0_we0,
        max_pool_out_buf_V_0_d0,
        conv_out_buf_V_0_address0,
        conv_out_buf_V_0_ce0,
        conv_out_buf_V_0_q0,
        conv_out_buf_V_0_address1,
        conv_out_buf_V_0_ce1,
        conv_out_buf_V_0_q1,
        conv_out_buf_V_0_address2,
        conv_out_buf_V_0_ce2,
        conv_out_buf_V_0_q2,
        conv_out_buf_V_0_address3,
        conv_out_buf_V_0_ce3,
        conv_out_buf_V_0_q3
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] max_pool_out_buf_V_0_address0;
output   max_pool_out_buf_V_0_ce0;
output   max_pool_out_buf_V_0_we0;
output  [14:0] max_pool_out_buf_V_0_d0;
output  [5:0] conv_out_buf_V_0_address0;
output   conv_out_buf_V_0_ce0;
input  [14:0] conv_out_buf_V_0_q0;
output  [5:0] conv_out_buf_V_0_address1;
output   conv_out_buf_V_0_ce1;
input  [14:0] conv_out_buf_V_0_q1;
output  [5:0] conv_out_buf_V_0_address2;
output   conv_out_buf_V_0_ce2;
input  [14:0] conv_out_buf_V_0_q2;
output  [5:0] conv_out_buf_V_0_address3;
output   conv_out_buf_V_0_ce3;
input  [14:0] conv_out_buf_V_0_q3;

reg ap_idle;
reg max_pool_out_buf_V_0_ce0;
reg max_pool_out_buf_V_0_we0;
reg conv_out_buf_V_0_ce0;
reg conv_out_buf_V_0_ce1;
reg conv_out_buf_V_0_ce2;
reg conv_out_buf_V_0_ce3;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln73_fu_146_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln73_fu_176_p3;
reg   [1:0] select_ln73_reg_424;
wire   [1:0] select_ln73_1_fu_184_p3;
reg   [1:0] select_ln73_1_reg_430;
wire   [3:0] add_ln83_fu_288_p2;
reg   [3:0] add_ln83_reg_438;
reg   [3:0] add_ln83_reg_438_pp0_iter2_reg;
reg   [3:0] add_ln83_reg_438_pp0_iter3_reg;
wire   [14:0] select_ln80_fu_365_p3;
reg   [14:0] select_ln80_reg_463;
reg   [14:0] conv_out_buf_V_0_load_2_reg_469;
reg   [14:0] conv_out_buf_V_0_load_3_reg_475;
wire   [14:0] select_ln80_2_fu_388_p3;
reg   [14:0] select_ln80_2_reg_481;
wire   [63:0] zext_ln1695_2_fu_311_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1695_3_fu_322_p1;
wire   [63:0] zext_ln1695_5_fu_343_p1;
wire   [63:0] zext_ln1695_6_fu_354_p1;
wire   [63:0] zext_ln83_3_fu_395_p1;
reg   [1:0] j_fu_54;
wire   [1:0] add_ln74_fu_192_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [1:0] i_fu_58;
reg   [1:0] ap_sig_allocacmp_i_load;
reg   [3:0] indvar_flatten20_fu_62;
wire   [3:0] add_ln73_1_fu_152_p2;
reg   [3:0] ap_sig_allocacmp_indvar_flatten20_load;
wire   [0:0] icmp_ln74_fu_170_p2;
wire   [1:0] add_ln73_fu_164_p2;
wire   [3:0] tmp_s_fu_216_p3;
wire   [3:0] zext_ln83_fu_213_p1;
wire   [5:0] tmp_1_fu_240_p3;
wire   [5:0] zext_ln83_1_fu_223_p1;
wire   [2:0] zext_ln77_mid2_v_fu_233_p3;
wire   [2:0] or_ln73_fu_253_p2;
wire   [3:0] tmp_3_fu_267_p3;
wire   [5:0] tmp_2_fu_259_p3;
wire   [5:0] zext_ln1695_fu_275_p1;
wire   [3:0] sub_ln83_fu_227_p2;
wire   [3:0] zext_ln83_2_fu_285_p1;
wire   [2:0] tmp_4_fu_294_p3;
wire   [5:0] sub_ln1695_fu_247_p2;
wire   [5:0] zext_ln1695_1_fu_301_p1;
wire   [5:0] add_ln1695_fu_305_p2;
wire   [5:0] sub_ln1695_1_fu_279_p2;
wire   [5:0] add_ln1695_1_fu_316_p2;
wire   [2:0] or_ln79_fu_327_p2;
wire   [5:0] zext_ln1695_4_fu_333_p1;
wire   [5:0] add_ln1695_2_fu_337_p2;
wire   [5:0] add_ln1695_3_fu_348_p2;
wire   [0:0] icmp_ln1695_fu_359_p2;
wire   [0:0] icmp_ln1695_1_fu_373_p2;
wire   [14:0] select_ln80_1_fu_377_p3;
wire   [0:0] icmp_ln1695_2_fu_383_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

tiled_conv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_58 <= select_ln73_1_fu_184_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_58 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_62 <= add_ln73_1_fu_152_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_62 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln73_fu_146_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_54 <= add_ln74_fu_192_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_54 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln83_reg_438 <= add_ln83_fu_288_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln83_reg_438_pp0_iter2_reg <= add_ln83_reg_438;
        add_ln83_reg_438_pp0_iter3_reg <= add_ln83_reg_438_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        select_ln80_2_reg_481 <= select_ln80_2_fu_388_p3;
        select_ln80_reg_463 <= select_ln80_fu_365_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        conv_out_buf_V_0_load_2_reg_469 <= conv_out_buf_V_0_q1;
        conv_out_buf_V_0_load_3_reg_475 <= conv_out_buf_V_0_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln73_fu_146_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln73_1_reg_430 <= select_ln73_1_fu_184_p3;
        select_ln73_reg_424 <= select_ln73_fu_176_p3;
    end
end

always @ (*) begin
    if (((icmp_ln73_fu_146_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 2'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_58;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_54;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv_out_buf_V_0_ce0 = 1'b1;
    end else begin
        conv_out_buf_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv_out_buf_V_0_ce1 = 1'b1;
    end else begin
        conv_out_buf_V_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv_out_buf_V_0_ce2 = 1'b1;
    end else begin
        conv_out_buf_V_0_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv_out_buf_V_0_ce3 = 1'b1;
    end else begin
        conv_out_buf_V_0_ce3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        max_pool_out_buf_V_0_ce0 = 1'b1;
    end else begin
        max_pool_out_buf_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        max_pool_out_buf_V_0_we0 = 1'b1;
    end else begin
        max_pool_out_buf_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1695_1_fu_316_p2 = (sub_ln1695_1_fu_279_p2 + zext_ln1695_1_fu_301_p1);

assign add_ln1695_2_fu_337_p2 = (sub_ln1695_fu_247_p2 + zext_ln1695_4_fu_333_p1);

assign add_ln1695_3_fu_348_p2 = (sub_ln1695_1_fu_279_p2 + zext_ln1695_4_fu_333_p1);

assign add_ln1695_fu_305_p2 = (sub_ln1695_fu_247_p2 + zext_ln1695_1_fu_301_p1);

assign add_ln73_1_fu_152_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 4'd1);

assign add_ln73_fu_164_p2 = (ap_sig_allocacmp_i_load + 2'd1);

assign add_ln74_fu_192_p2 = (select_ln73_fu_176_p3 + 2'd1);

assign add_ln83_fu_288_p2 = (sub_ln83_fu_227_p2 + zext_ln83_2_fu_285_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign conv_out_buf_V_0_address0 = zext_ln1695_6_fu_354_p1;

assign conv_out_buf_V_0_address1 = zext_ln1695_3_fu_322_p1;

assign conv_out_buf_V_0_address2 = zext_ln1695_5_fu_343_p1;

assign conv_out_buf_V_0_address3 = zext_ln1695_2_fu_311_p1;

assign icmp_ln1695_1_fu_373_p2 = ((conv_out_buf_V_0_load_2_reg_469 > select_ln80_reg_463) ? 1'b1 : 1'b0);

assign icmp_ln1695_2_fu_383_p2 = ((conv_out_buf_V_0_load_3_reg_475 > select_ln80_1_fu_377_p3) ? 1'b1 : 1'b0);

assign icmp_ln1695_fu_359_p2 = ((conv_out_buf_V_0_q2 > conv_out_buf_V_0_q3) ? 1'b1 : 1'b0);

assign icmp_ln73_fu_146_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_170_p2 = ((ap_sig_allocacmp_j_load == 2'd3) ? 1'b1 : 1'b0);

assign max_pool_out_buf_V_0_address0 = zext_ln83_3_fu_395_p1;

assign max_pool_out_buf_V_0_d0 = select_ln80_2_reg_481;

assign or_ln73_fu_253_p2 = (zext_ln77_mid2_v_fu_233_p3 | 3'd1);

assign or_ln79_fu_327_p2 = (tmp_4_fu_294_p3 | 3'd1);

assign select_ln73_1_fu_184_p3 = ((icmp_ln74_fu_170_p2[0:0] == 1'b1) ? add_ln73_fu_164_p2 : ap_sig_allocacmp_i_load);

assign select_ln73_fu_176_p3 = ((icmp_ln74_fu_170_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_j_load);

assign select_ln80_1_fu_377_p3 = ((icmp_ln1695_1_fu_373_p2[0:0] == 1'b1) ? conv_out_buf_V_0_load_2_reg_469 : select_ln80_reg_463);

assign select_ln80_2_fu_388_p3 = ((icmp_ln1695_2_fu_383_p2[0:0] == 1'b1) ? conv_out_buf_V_0_load_3_reg_475 : select_ln80_1_fu_377_p3);

assign select_ln80_fu_365_p3 = ((icmp_ln1695_fu_359_p2[0:0] == 1'b1) ? conv_out_buf_V_0_q2 : conv_out_buf_V_0_q3);

assign sub_ln1695_1_fu_279_p2 = (tmp_2_fu_259_p3 - zext_ln1695_fu_275_p1);

assign sub_ln1695_fu_247_p2 = (tmp_1_fu_240_p3 - zext_ln83_1_fu_223_p1);

assign sub_ln83_fu_227_p2 = (tmp_s_fu_216_p3 - zext_ln83_fu_213_p1);

assign tmp_1_fu_240_p3 = {{select_ln73_1_reg_430}, {4'd0}};

assign tmp_2_fu_259_p3 = {{or_ln73_fu_253_p2}, {3'd0}};

assign tmp_3_fu_267_p3 = {{or_ln73_fu_253_p2}, {1'd0}};

assign tmp_4_fu_294_p3 = {{select_ln73_reg_424}, {1'd0}};

assign tmp_s_fu_216_p3 = {{select_ln73_1_reg_430}, {2'd0}};

assign zext_ln1695_1_fu_301_p1 = tmp_4_fu_294_p3;

assign zext_ln1695_2_fu_311_p1 = add_ln1695_fu_305_p2;

assign zext_ln1695_3_fu_322_p1 = add_ln1695_1_fu_316_p2;

assign zext_ln1695_4_fu_333_p1 = or_ln79_fu_327_p2;

assign zext_ln1695_5_fu_343_p1 = add_ln1695_2_fu_337_p2;

assign zext_ln1695_6_fu_354_p1 = add_ln1695_3_fu_348_p2;

assign zext_ln1695_fu_275_p1 = tmp_3_fu_267_p3;

assign zext_ln77_mid2_v_fu_233_p3 = {{select_ln73_1_reg_430}, {1'd0}};

assign zext_ln83_1_fu_223_p1 = tmp_s_fu_216_p3;

assign zext_ln83_2_fu_285_p1 = select_ln73_reg_424;

assign zext_ln83_3_fu_395_p1 = add_ln83_reg_438_pp0_iter3_reg;

assign zext_ln83_fu_213_p1 = select_ln73_1_reg_430;

endmodule //tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_73_2_VITIS_LOOP_74_3