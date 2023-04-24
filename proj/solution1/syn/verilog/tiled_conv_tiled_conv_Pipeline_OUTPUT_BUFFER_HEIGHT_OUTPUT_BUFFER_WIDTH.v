// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Version: 2022.1.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module tiled_conv_tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        trunc_ln38_2,
        max_pool_out_buf_V_0_address0,
        max_pool_out_buf_V_0_ce0,
        max_pool_out_buf_V_0_q0,
        sub_ln181,
        layer1_output_V_address0,
        layer1_output_V_ce0,
        layer1_output_V_we0,
        layer1_output_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [3:0] trunc_ln38_2;
output  [3:0] max_pool_out_buf_V_0_address0;
output   max_pool_out_buf_V_0_ce0;
input  [14:0] max_pool_out_buf_V_0_q0;
input  [4:0] sub_ln181;
output  [7:0] layer1_output_V_address0;
output   layer1_output_V_ce0;
output   layer1_output_V_we0;
output  [14:0] layer1_output_V_d0;

reg ap_idle;
reg max_pool_out_buf_V_0_ce0;
reg layer1_output_V_ce0;
reg layer1_output_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln187_fu_121_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln187_fu_151_p3;
reg   [1:0] select_ln187_reg_306;
wire   [1:0] select_ln187_1_fu_159_p3;
reg   [1:0] select_ln187_1_reg_312;
wire   [7:0] add_ln201_2_fu_261_p2;
reg   [7:0] add_ln201_2_reg_323;
wire   [63:0] zext_ln201_3_fu_244_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln201_4_fu_267_p1;
reg   [1:0] j_fu_52;
wire   [1:0] add_ln190_fu_167_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [1:0] i_fu_56;
reg   [1:0] ap_sig_allocacmp_i_load;
reg   [3:0] indvar_flatten38_fu_60;
wire   [3:0] add_ln187_2_fu_127_p2;
reg   [3:0] ap_sig_allocacmp_indvar_flatten38_load;
wire   [0:0] icmp_ln190_fu_145_p2;
wire   [1:0] add_ln187_fu_139_p2;
wire   [3:0] tmp_s_fu_191_p3;
wire   [3:0] zext_ln201_fu_188_p1;
wire   [3:0] add_ln187_1_fu_204_p2;
wire   [5:0] tmp_36_fu_217_p3;
wire   [7:0] tmp_35_fu_209_p3;
wire   [7:0] zext_ln201_1_fu_225_p1;
wire   [3:0] sub_ln201_fu_198_p2;
wire   [3:0] zext_ln201_2_fu_235_p1;
wire   [3:0] add_ln201_1_fu_238_p2;
wire   [4:0] j_5_cast_fu_249_p1;
wire   [4:0] add_ln201_fu_252_p2;
wire   [7:0] sub_ln201_1_fu_229_p2;
wire  signed [7:0] sext_ln201_fu_257_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln187_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_56 <= select_ln187_1_fu_159_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_56 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln187_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten38_fu_60 <= add_ln187_2_fu_127_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten38_fu_60 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln187_fu_121_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_52 <= add_ln190_fu_167_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_52 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln201_2_reg_323 <= add_ln201_2_fu_261_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln187_fu_121_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln187_1_reg_312 <= select_ln187_1_fu_159_p3;
        select_ln187_reg_306 <= select_ln187_fu_151_p3;
    end
end

always @ (*) begin
    if (((icmp_ln187_fu_121_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 2'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_56;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten38_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten38_load = indvar_flatten38_fu_60;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_52;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        layer1_output_V_ce0 = 1'b1;
    end else begin
        layer1_output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        layer1_output_V_we0 = 1'b1;
    end else begin
        layer1_output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        max_pool_out_buf_V_0_ce0 = 1'b1;
    end else begin
        max_pool_out_buf_V_0_ce0 = 1'b0;
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

assign add_ln187_1_fu_204_p2 = (zext_ln201_fu_188_p1 + trunc_ln38_2);

assign add_ln187_2_fu_127_p2 = (ap_sig_allocacmp_indvar_flatten38_load + 4'd1);

assign add_ln187_fu_139_p2 = (ap_sig_allocacmp_i_load + 2'd1);

assign add_ln190_fu_167_p2 = (select_ln187_fu_151_p3 + 2'd1);

assign add_ln201_1_fu_238_p2 = (sub_ln201_fu_198_p2 + zext_ln201_2_fu_235_p1);

assign add_ln201_2_fu_261_p2 = ($signed(sub_ln201_1_fu_229_p2) + $signed(sext_ln201_fu_257_p1));

assign add_ln201_fu_252_p2 = (j_5_cast_fu_249_p1 + sub_ln181);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln187_fu_121_p2 = ((ap_sig_allocacmp_indvar_flatten38_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln190_fu_145_p2 = ((ap_sig_allocacmp_j_load == 2'd3) ? 1'b1 : 1'b0);

assign j_5_cast_fu_249_p1 = select_ln187_reg_306;

assign layer1_output_V_address0 = zext_ln201_4_fu_267_p1;

assign layer1_output_V_d0 = max_pool_out_buf_V_0_q0;

assign max_pool_out_buf_V_0_address0 = zext_ln201_3_fu_244_p1;

assign select_ln187_1_fu_159_p3 = ((icmp_ln190_fu_145_p2[0:0] == 1'b1) ? add_ln187_fu_139_p2 : ap_sig_allocacmp_i_load);

assign select_ln187_fu_151_p3 = ((icmp_ln190_fu_145_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_j_load);

assign sext_ln201_fu_257_p1 = $signed(add_ln201_fu_252_p2);

assign sub_ln201_1_fu_229_p2 = (tmp_35_fu_209_p3 - zext_ln201_1_fu_225_p1);

assign sub_ln201_fu_198_p2 = (tmp_s_fu_191_p3 - zext_ln201_fu_188_p1);

assign tmp_35_fu_209_p3 = {{add_ln187_1_fu_204_p2}, {4'd0}};

assign tmp_36_fu_217_p3 = {{add_ln187_1_fu_204_p2}, {2'd0}};

assign tmp_s_fu_191_p3 = {{select_ln187_1_reg_312}, {2'd0}};

assign zext_ln201_1_fu_225_p1 = tmp_36_fu_217_p3;

assign zext_ln201_2_fu_235_p1 = select_ln187_reg_306;

assign zext_ln201_3_fu_244_p1 = add_ln201_1_fu_238_p2;

assign zext_ln201_4_fu_267_p1 = add_ln201_2_reg_323;

assign zext_ln201_fu_188_p1 = select_ln187_1_reg_312;

endmodule //tiled_conv_tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH
