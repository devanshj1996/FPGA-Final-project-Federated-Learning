// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Version: 2022.1.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_109_1_VITIS_LOOP_111_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_wt_AWVALID,
        m_axi_wt_AWREADY,
        m_axi_wt_AWADDR,
        m_axi_wt_AWID,
        m_axi_wt_AWLEN,
        m_axi_wt_AWSIZE,
        m_axi_wt_AWBURST,
        m_axi_wt_AWLOCK,
        m_axi_wt_AWCACHE,
        m_axi_wt_AWPROT,
        m_axi_wt_AWQOS,
        m_axi_wt_AWREGION,
        m_axi_wt_AWUSER,
        m_axi_wt_WVALID,
        m_axi_wt_WREADY,
        m_axi_wt_WDATA,
        m_axi_wt_WSTRB,
        m_axi_wt_WLAST,
        m_axi_wt_WID,
        m_axi_wt_WUSER,
        m_axi_wt_ARVALID,
        m_axi_wt_ARREADY,
        m_axi_wt_ARADDR,
        m_axi_wt_ARID,
        m_axi_wt_ARLEN,
        m_axi_wt_ARSIZE,
        m_axi_wt_ARBURST,
        m_axi_wt_ARLOCK,
        m_axi_wt_ARCACHE,
        m_axi_wt_ARPROT,
        m_axi_wt_ARQOS,
        m_axi_wt_ARREGION,
        m_axi_wt_ARUSER,
        m_axi_wt_RVALID,
        m_axi_wt_RREADY,
        m_axi_wt_RDATA,
        m_axi_wt_RLAST,
        m_axi_wt_RID,
        m_axi_wt_RFIFONUM,
        m_axi_wt_RUSER,
        m_axi_wt_RRESP,
        m_axi_wt_BVALID,
        m_axi_wt_BREADY,
        m_axi_wt_BRESP,
        m_axi_wt_BID,
        m_axi_wt_BUSER,
        m_axi_fm_AWVALID,
        m_axi_fm_AWREADY,
        m_axi_fm_AWADDR,
        m_axi_fm_AWID,
        m_axi_fm_AWLEN,
        m_axi_fm_AWSIZE,
        m_axi_fm_AWBURST,
        m_axi_fm_AWLOCK,
        m_axi_fm_AWCACHE,
        m_axi_fm_AWPROT,
        m_axi_fm_AWQOS,
        m_axi_fm_AWREGION,
        m_axi_fm_AWUSER,
        m_axi_fm_WVALID,
        m_axi_fm_WREADY,
        m_axi_fm_WDATA,
        m_axi_fm_WSTRB,
        m_axi_fm_WLAST,
        m_axi_fm_WID,
        m_axi_fm_WUSER,
        m_axi_fm_ARVALID,
        m_axi_fm_ARREADY,
        m_axi_fm_ARADDR,
        m_axi_fm_ARID,
        m_axi_fm_ARLEN,
        m_axi_fm_ARSIZE,
        m_axi_fm_ARBURST,
        m_axi_fm_ARLOCK,
        m_axi_fm_ARCACHE,
        m_axi_fm_ARPROT,
        m_axi_fm_ARQOS,
        m_axi_fm_ARREGION,
        m_axi_fm_ARUSER,
        m_axi_fm_RVALID,
        m_axi_fm_RREADY,
        m_axi_fm_RDATA,
        m_axi_fm_RLAST,
        m_axi_fm_RID,
        m_axi_fm_RFIFONUM,
        m_axi_fm_RUSER,
        m_axi_fm_RRESP,
        m_axi_fm_BVALID,
        m_axi_fm_BREADY,
        m_axi_fm_BRESP,
        m_axi_fm_BID,
        m_axi_fm_BUSER,
        sext_ln109,
        linear_weights,
        linear_input_V_address0,
        linear_input_V_ce0,
        linear_input_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_wt_AWVALID;
input   m_axi_wt_AWREADY;
output  [63:0] m_axi_wt_AWADDR;
output  [0:0] m_axi_wt_AWID;
output  [31:0] m_axi_wt_AWLEN;
output  [2:0] m_axi_wt_AWSIZE;
output  [1:0] m_axi_wt_AWBURST;
output  [1:0] m_axi_wt_AWLOCK;
output  [3:0] m_axi_wt_AWCACHE;
output  [2:0] m_axi_wt_AWPROT;
output  [3:0] m_axi_wt_AWQOS;
output  [3:0] m_axi_wt_AWREGION;
output  [0:0] m_axi_wt_AWUSER;
output   m_axi_wt_WVALID;
input   m_axi_wt_WREADY;
output  [15:0] m_axi_wt_WDATA;
output  [1:0] m_axi_wt_WSTRB;
output   m_axi_wt_WLAST;
output  [0:0] m_axi_wt_WID;
output  [0:0] m_axi_wt_WUSER;
output   m_axi_wt_ARVALID;
input   m_axi_wt_ARREADY;
output  [63:0] m_axi_wt_ARADDR;
output  [0:0] m_axi_wt_ARID;
output  [31:0] m_axi_wt_ARLEN;
output  [2:0] m_axi_wt_ARSIZE;
output  [1:0] m_axi_wt_ARBURST;
output  [1:0] m_axi_wt_ARLOCK;
output  [3:0] m_axi_wt_ARCACHE;
output  [2:0] m_axi_wt_ARPROT;
output  [3:0] m_axi_wt_ARQOS;
output  [3:0] m_axi_wt_ARREGION;
output  [0:0] m_axi_wt_ARUSER;
input   m_axi_wt_RVALID;
output   m_axi_wt_RREADY;
input  [15:0] m_axi_wt_RDATA;
input   m_axi_wt_RLAST;
input  [0:0] m_axi_wt_RID;
input  [9:0] m_axi_wt_RFIFONUM;
input  [0:0] m_axi_wt_RUSER;
input  [1:0] m_axi_wt_RRESP;
input   m_axi_wt_BVALID;
output   m_axi_wt_BREADY;
input  [1:0] m_axi_wt_BRESP;
input  [0:0] m_axi_wt_BID;
input  [0:0] m_axi_wt_BUSER;
output   m_axi_fm_AWVALID;
input   m_axi_fm_AWREADY;
output  [63:0] m_axi_fm_AWADDR;
output  [0:0] m_axi_fm_AWID;
output  [31:0] m_axi_fm_AWLEN;
output  [2:0] m_axi_fm_AWSIZE;
output  [1:0] m_axi_fm_AWBURST;
output  [1:0] m_axi_fm_AWLOCK;
output  [3:0] m_axi_fm_AWCACHE;
output  [2:0] m_axi_fm_AWPROT;
output  [3:0] m_axi_fm_AWQOS;
output  [3:0] m_axi_fm_AWREGION;
output  [0:0] m_axi_fm_AWUSER;
output   m_axi_fm_WVALID;
input   m_axi_fm_WREADY;
output  [15:0] m_axi_fm_WDATA;
output  [1:0] m_axi_fm_WSTRB;
output   m_axi_fm_WLAST;
output  [0:0] m_axi_fm_WID;
output  [0:0] m_axi_fm_WUSER;
output   m_axi_fm_ARVALID;
input   m_axi_fm_ARREADY;
output  [63:0] m_axi_fm_ARADDR;
output  [0:0] m_axi_fm_ARID;
output  [31:0] m_axi_fm_ARLEN;
output  [2:0] m_axi_fm_ARSIZE;
output  [1:0] m_axi_fm_ARBURST;
output  [1:0] m_axi_fm_ARLOCK;
output  [3:0] m_axi_fm_ARCACHE;
output  [2:0] m_axi_fm_ARPROT;
output  [3:0] m_axi_fm_ARQOS;
output  [3:0] m_axi_fm_ARREGION;
output  [0:0] m_axi_fm_ARUSER;
input   m_axi_fm_RVALID;
output   m_axi_fm_RREADY;
input  [15:0] m_axi_fm_RDATA;
input   m_axi_fm_RLAST;
input  [0:0] m_axi_fm_RID;
input  [9:0] m_axi_fm_RFIFONUM;
input  [0:0] m_axi_fm_RUSER;
input  [1:0] m_axi_fm_RRESP;
input   m_axi_fm_BVALID;
output   m_axi_fm_BREADY;
input  [1:0] m_axi_fm_BRESP;
input  [0:0] m_axi_fm_BID;
input  [0:0] m_axi_fm_BUSER;
input  [62:0] sext_ln109;
input  [63:0] linear_weights;
output  [7:0] linear_input_V_address0;
output   linear_input_V_ce0;
input  [14:0] linear_input_V_q0;

reg ap_idle;
reg m_axi_wt_ARVALID;
reg m_axi_wt_RREADY;
reg m_axi_fm_WVALID;
reg linear_input_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] icmp_ln109_reg_428;
reg   [0:0] icmp_ln109_reg_428_pp0_iter1_reg;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
reg   [0:0] icmp_ln109_reg_428_pp0_iter8_reg;
reg    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
reg   [0:0] ifzero_reg_449;
reg   [0:0] ifzero_reg_449_pp0_iter13_reg;
reg    ap_block_state15_io;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln109_fu_190_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    wt_blk_n_AR;
wire    ap_block_pp0_stage0;
reg    wt_blk_n_R;
reg    fm_blk_n_W;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln109_reg_428_pp0_iter2_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter3_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter4_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter5_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter6_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter7_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter9_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter10_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter11_reg;
reg   [0:0] icmp_ln109_reg_428_pp0_iter12_reg;
wire   [0:0] icmp_ln111_fu_214_p2;
reg   [0:0] icmp_ln111_reg_432;
reg   [0:0] icmp_ln111_reg_432_pp0_iter1_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter2_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter3_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter4_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter5_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter6_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter7_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter8_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter9_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter10_reg;
reg   [0:0] icmp_ln111_reg_432_pp0_iter11_reg;
wire   [7:0] select_ln109_fu_220_p3;
reg   [7:0] select_ln109_reg_437;
reg   [7:0] select_ln109_reg_437_pp0_iter1_reg;
reg   [7:0] select_ln109_reg_437_pp0_iter2_reg;
reg   [7:0] select_ln109_reg_437_pp0_iter3_reg;
reg   [7:0] select_ln109_reg_437_pp0_iter4_reg;
reg   [7:0] select_ln109_reg_437_pp0_iter5_reg;
reg   [7:0] select_ln109_reg_437_pp0_iter6_reg;
reg   [7:0] select_ln109_reg_437_pp0_iter7_reg;
reg   [7:0] select_ln109_reg_437_pp0_iter8_reg;
wire   [3:0] select_ln109_1_fu_228_p3;
reg   [3:0] select_ln109_1_reg_444;
wire   [0:0] ifzero_fu_242_p2;
reg   [0:0] ifzero_reg_449_pp0_iter1_reg;
reg   [0:0] ifzero_reg_449_pp0_iter2_reg;
reg   [0:0] ifzero_reg_449_pp0_iter3_reg;
reg   [0:0] ifzero_reg_449_pp0_iter4_reg;
reg   [0:0] ifzero_reg_449_pp0_iter5_reg;
reg   [0:0] ifzero_reg_449_pp0_iter6_reg;
reg   [0:0] ifzero_reg_449_pp0_iter7_reg;
reg   [0:0] ifzero_reg_449_pp0_iter8_reg;
reg   [0:0] ifzero_reg_449_pp0_iter9_reg;
reg   [0:0] ifzero_reg_449_pp0_iter10_reg;
reg   [0:0] ifzero_reg_449_pp0_iter11_reg;
reg   [0:0] ifzero_reg_449_pp0_iter12_reg;
reg   [63:0] wt_addr_reg_453;
reg  signed [15:0] wt_addr_read_reg_464;
reg   [15:0] temp_V_reg_489;
reg    ap_condition_exit_pp0_iter13_stage0;
wire   [63:0] j_cast13_fu_333_p1;
wire  signed [63:0] sext_ln1319_fu_323_p1;
reg    ap_block_pp0_stage0_01001;
reg   [15:0] lhs_fu_102;
reg   [15:0] ap_sig_allocacmp_lhs_load;
wire    ap_loop_init;
reg   [7:0] j_fu_106;
wire   [7:0] add_ln111_fu_236_p2;
reg   [7:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_110;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [10:0] indvar_flatten55_fu_114;
wire   [10:0] add_ln109_2_fu_196_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten55_load;
wire   [3:0] add_ln109_fu_208_p2;
wire   [4:0] add_ln1319_mid2_v_v_fu_263_p3;
wire   [63:0] zext_ln109_fu_270_p1;
wire   [9:0] shl_ln1319_2_fu_286_p3;
wire   [11:0] zext_ln1319_fu_293_p1;
wire   [11:0] shl_ln1319_1_fu_279_p3;
wire   [11:0] add_ln1319_fu_297_p2;
wire   [63:0] zext_ln1319_1_fu_303_p1;
wire   [63:0] add_ln109_1_fu_274_p2;
wire   [63:0] add_ln1319_1_fu_307_p2;
wire   [62:0] trunc_ln3_fu_313_p4;
wire   [15:0] select_ln109_2_fu_347_p3;
wire  signed [28:0] temp_V_fu_367_p1;
wire   [28:0] grp_fu_381_p3;
wire   [14:0] grp_fu_381_p1;
wire   [28:0] grp_fu_381_p2;
reg    grp_fu_381_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [28:0] grp_fu_381_p10;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_done_reg = 1'b0;
end

tiled_conv_mac_muladd_16s_15ns_29ns_29_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
mac_muladd_16s_15ns_29ns_29_4_1_U76(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(wt_addr_read_reg_464),
    .din1(grp_fu_381_p1),
    .din2(grp_fu_381_p2),
    .ce(grp_fu_381_ce),
    .dout(grp_fu_381_p3)
);

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
        end else if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter13_stage0)) begin
            ap_enable_reg_pp0_iter14 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln109_fu_190_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_110 <= select_ln109_1_fu_228_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_110 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln109_fu_190_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten55_fu_114 <= add_ln109_2_fu_196_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten55_fu_114 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln109_fu_190_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_106 <= add_ln111_fu_236_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_106 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            lhs_fu_102 <= 16'd0;
        end else if (((ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln109_reg_428_pp0_iter12_reg == 1'd0))) begin
            lhs_fu_102 <= {{temp_V_fu_367_p1[28:13]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln109_reg_428_pp0_iter10_reg <= icmp_ln109_reg_428_pp0_iter9_reg;
        icmp_ln109_reg_428_pp0_iter11_reg <= icmp_ln109_reg_428_pp0_iter10_reg;
        icmp_ln109_reg_428_pp0_iter12_reg <= icmp_ln109_reg_428_pp0_iter11_reg;
        icmp_ln109_reg_428_pp0_iter2_reg <= icmp_ln109_reg_428_pp0_iter1_reg;
        icmp_ln109_reg_428_pp0_iter3_reg <= icmp_ln109_reg_428_pp0_iter2_reg;
        icmp_ln109_reg_428_pp0_iter4_reg <= icmp_ln109_reg_428_pp0_iter3_reg;
        icmp_ln109_reg_428_pp0_iter5_reg <= icmp_ln109_reg_428_pp0_iter4_reg;
        icmp_ln109_reg_428_pp0_iter6_reg <= icmp_ln109_reg_428_pp0_iter5_reg;
        icmp_ln109_reg_428_pp0_iter7_reg <= icmp_ln109_reg_428_pp0_iter6_reg;
        icmp_ln109_reg_428_pp0_iter8_reg <= icmp_ln109_reg_428_pp0_iter7_reg;
        icmp_ln109_reg_428_pp0_iter9_reg <= icmp_ln109_reg_428_pp0_iter8_reg;
        icmp_ln111_reg_432_pp0_iter10_reg <= icmp_ln111_reg_432_pp0_iter9_reg;
        icmp_ln111_reg_432_pp0_iter11_reg <= icmp_ln111_reg_432_pp0_iter10_reg;
        icmp_ln111_reg_432_pp0_iter2_reg <= icmp_ln111_reg_432_pp0_iter1_reg;
        icmp_ln111_reg_432_pp0_iter3_reg <= icmp_ln111_reg_432_pp0_iter2_reg;
        icmp_ln111_reg_432_pp0_iter4_reg <= icmp_ln111_reg_432_pp0_iter3_reg;
        icmp_ln111_reg_432_pp0_iter5_reg <= icmp_ln111_reg_432_pp0_iter4_reg;
        icmp_ln111_reg_432_pp0_iter6_reg <= icmp_ln111_reg_432_pp0_iter5_reg;
        icmp_ln111_reg_432_pp0_iter7_reg <= icmp_ln111_reg_432_pp0_iter6_reg;
        icmp_ln111_reg_432_pp0_iter8_reg <= icmp_ln111_reg_432_pp0_iter7_reg;
        icmp_ln111_reg_432_pp0_iter9_reg <= icmp_ln111_reg_432_pp0_iter8_reg;
        ifzero_reg_449_pp0_iter10_reg <= ifzero_reg_449_pp0_iter9_reg;
        ifzero_reg_449_pp0_iter11_reg <= ifzero_reg_449_pp0_iter10_reg;
        ifzero_reg_449_pp0_iter12_reg <= ifzero_reg_449_pp0_iter11_reg;
        ifzero_reg_449_pp0_iter13_reg <= ifzero_reg_449_pp0_iter12_reg;
        ifzero_reg_449_pp0_iter2_reg <= ifzero_reg_449_pp0_iter1_reg;
        ifzero_reg_449_pp0_iter3_reg <= ifzero_reg_449_pp0_iter2_reg;
        ifzero_reg_449_pp0_iter4_reg <= ifzero_reg_449_pp0_iter3_reg;
        ifzero_reg_449_pp0_iter5_reg <= ifzero_reg_449_pp0_iter4_reg;
        ifzero_reg_449_pp0_iter6_reg <= ifzero_reg_449_pp0_iter5_reg;
        ifzero_reg_449_pp0_iter7_reg <= ifzero_reg_449_pp0_iter6_reg;
        ifzero_reg_449_pp0_iter8_reg <= ifzero_reg_449_pp0_iter7_reg;
        ifzero_reg_449_pp0_iter9_reg <= ifzero_reg_449_pp0_iter8_reg;
        select_ln109_reg_437_pp0_iter2_reg <= select_ln109_reg_437_pp0_iter1_reg;
        select_ln109_reg_437_pp0_iter3_reg <= select_ln109_reg_437_pp0_iter2_reg;
        select_ln109_reg_437_pp0_iter4_reg <= select_ln109_reg_437_pp0_iter3_reg;
        select_ln109_reg_437_pp0_iter5_reg <= select_ln109_reg_437_pp0_iter4_reg;
        select_ln109_reg_437_pp0_iter6_reg <= select_ln109_reg_437_pp0_iter5_reg;
        select_ln109_reg_437_pp0_iter7_reg <= select_ln109_reg_437_pp0_iter6_reg;
        select_ln109_reg_437_pp0_iter8_reg <= select_ln109_reg_437_pp0_iter7_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln109_reg_428 <= icmp_ln109_fu_190_p2;
        icmp_ln109_reg_428_pp0_iter1_reg <= icmp_ln109_reg_428;
        icmp_ln111_reg_432_pp0_iter1_reg <= icmp_ln111_reg_432;
        ifzero_reg_449_pp0_iter1_reg <= ifzero_reg_449;
        select_ln109_reg_437_pp0_iter1_reg <= select_ln109_reg_437;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln109_fu_190_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln111_reg_432 <= icmp_ln111_fu_214_p2;
        ifzero_reg_449 <= ifzero_fu_242_p2;
        select_ln109_1_reg_444 <= select_ln109_1_fu_228_p3;
        select_ln109_reg_437 <= select_ln109_fu_220_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln109_reg_428_pp0_iter12_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        temp_V_reg_489 <= {{temp_V_fu_367_p1[28:13]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_reg_428_pp0_iter8_reg == 1'd0))) begin
        wt_addr_read_reg_464 <= m_axi_wt_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln109_reg_428 == 1'd0))) begin
        wt_addr_reg_453 <= sext_ln1319_fu_323_p1;
    end
end

always @ (*) begin
    if (((icmp_ln109_fu_190_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln109_reg_428_pp0_iter12_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter13_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_110;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten55_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten55_load = indvar_flatten55_fu_114;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 8'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_106;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln109_reg_428_pp0_iter12_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_lhs_load = {{temp_V_fu_367_p1[28:13]}};
    end else begin
        ap_sig_allocacmp_lhs_load = lhs_fu_102;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ifzero_reg_449_pp0_iter13_reg == 1'd1))) begin
        fm_blk_n_W = m_axi_fm_WREADY;
    end else begin
        fm_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_381_ce = 1'b1;
    end else begin
        grp_fu_381_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        linear_input_V_ce0 = 1'b1;
    end else begin
        linear_input_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ifzero_reg_449_pp0_iter13_reg == 1'd1))) begin
        m_axi_fm_WVALID = 1'b1;
    end else begin
        m_axi_fm_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_reg_428_pp0_iter1_reg == 1'd0))) begin
        m_axi_wt_ARVALID = 1'b1;
    end else begin
        m_axi_wt_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln109_reg_428_pp0_iter8_reg == 1'd0))) begin
        m_axi_wt_RREADY = 1'b1;
    end else begin
        m_axi_wt_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln109_reg_428_pp0_iter1_reg == 1'd0))) begin
        wt_blk_n_AR = m_axi_wt_ARREADY;
    end else begin
        wt_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln109_reg_428_pp0_iter8_reg == 1'd0))) begin
        wt_blk_n_R = m_axi_wt_RVALID;
    end else begin
        wt_blk_n_R = 1'b1;
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

assign add_ln109_1_fu_274_p2 = (zext_ln109_fu_270_p1 + linear_weights);

assign add_ln109_2_fu_196_p2 = (ap_sig_allocacmp_indvar_flatten55_load + 11'd1);

assign add_ln109_fu_208_p2 = (ap_sig_allocacmp_i_load + 4'd1);

assign add_ln111_fu_236_p2 = (select_ln109_fu_220_p3 + 8'd1);

assign add_ln1319_1_fu_307_p2 = (zext_ln1319_1_fu_303_p1 + add_ln109_1_fu_274_p2);

assign add_ln1319_fu_297_p2 = (zext_ln1319_fu_293_p1 + shl_ln1319_1_fu_279_p3);

assign add_ln1319_mid2_v_v_fu_263_p3 = {{select_ln109_1_reg_444}, {1'd0}};

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln109_reg_428_pp0_iter8_reg == 1'd0) & (m_axi_wt_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_block_state15_io)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln109_reg_428_pp0_iter8_reg == 1'd0) & (m_axi_wt_RVALID == 1'b0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_block_state15_io)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln109_reg_428_pp0_iter8_reg == 1'd0) & (m_axi_wt_RVALID == 1'b0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_io)));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter9 = ((icmp_ln109_reg_428_pp0_iter8_reg == 1'd0) & (m_axi_wt_RVALID == 1'b0));
end

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state15_io = ((ifzero_reg_449_pp0_iter13_reg == 1'd1) & (m_axi_fm_WREADY == 1'b0));
end

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((m_axi_wt_ARREADY == 1'b0) & (icmp_ln109_reg_428_pp0_iter1_reg == 1'd0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_381_p1 = grp_fu_381_p10;

assign grp_fu_381_p10 = linear_input_V_q0;

assign grp_fu_381_p2 = {{select_ln109_2_fu_347_p3}, {13'd0}};

assign icmp_ln109_fu_190_p2 = ((ap_sig_allocacmp_indvar_flatten55_load == 11'd1440) ? 1'b1 : 1'b0);

assign icmp_ln111_fu_214_p2 = ((ap_sig_allocacmp_j_load == 8'd144) ? 1'b1 : 1'b0);

assign ifzero_fu_242_p2 = ((add_ln111_fu_236_p2 == 8'd144) ? 1'b1 : 1'b0);

assign j_cast13_fu_333_p1 = select_ln109_reg_437_pp0_iter8_reg;

assign linear_input_V_address0 = j_cast13_fu_333_p1;

assign m_axi_fm_ARADDR = 64'd0;

assign m_axi_fm_ARBURST = 2'd0;

assign m_axi_fm_ARCACHE = 4'd0;

assign m_axi_fm_ARID = 1'd0;

assign m_axi_fm_ARLEN = 32'd0;

assign m_axi_fm_ARLOCK = 2'd0;

assign m_axi_fm_ARPROT = 3'd0;

assign m_axi_fm_ARQOS = 4'd0;

assign m_axi_fm_ARREGION = 4'd0;

assign m_axi_fm_ARSIZE = 3'd0;

assign m_axi_fm_ARUSER = 1'd0;

assign m_axi_fm_ARVALID = 1'b0;

assign m_axi_fm_AWADDR = 64'd0;

assign m_axi_fm_AWBURST = 2'd0;

assign m_axi_fm_AWCACHE = 4'd0;

assign m_axi_fm_AWID = 1'd0;

assign m_axi_fm_AWLEN = 32'd0;

assign m_axi_fm_AWLOCK = 2'd0;

assign m_axi_fm_AWPROT = 3'd0;

assign m_axi_fm_AWQOS = 4'd0;

assign m_axi_fm_AWREGION = 4'd0;

assign m_axi_fm_AWSIZE = 3'd0;

assign m_axi_fm_AWUSER = 1'd0;

assign m_axi_fm_AWVALID = 1'b0;

assign m_axi_fm_BREADY = 1'b0;

assign m_axi_fm_RREADY = 1'b0;

assign m_axi_fm_WDATA = temp_V_reg_489;

assign m_axi_fm_WID = 1'd0;

assign m_axi_fm_WLAST = 1'b0;

assign m_axi_fm_WSTRB = 2'd3;

assign m_axi_fm_WUSER = 1'd0;

assign m_axi_wt_ARADDR = wt_addr_reg_453;

assign m_axi_wt_ARBURST = 2'd0;

assign m_axi_wt_ARCACHE = 4'd0;

assign m_axi_wt_ARID = 1'd0;

assign m_axi_wt_ARLEN = 32'd1;

assign m_axi_wt_ARLOCK = 2'd0;

assign m_axi_wt_ARPROT = 3'd0;

assign m_axi_wt_ARQOS = 4'd0;

assign m_axi_wt_ARREGION = 4'd0;

assign m_axi_wt_ARSIZE = 3'd0;

assign m_axi_wt_ARUSER = 1'd0;

assign m_axi_wt_AWADDR = 64'd0;

assign m_axi_wt_AWBURST = 2'd0;

assign m_axi_wt_AWCACHE = 4'd0;

assign m_axi_wt_AWID = 1'd0;

assign m_axi_wt_AWLEN = 32'd0;

assign m_axi_wt_AWLOCK = 2'd0;

assign m_axi_wt_AWPROT = 3'd0;

assign m_axi_wt_AWQOS = 4'd0;

assign m_axi_wt_AWREGION = 4'd0;

assign m_axi_wt_AWSIZE = 3'd0;

assign m_axi_wt_AWUSER = 1'd0;

assign m_axi_wt_AWVALID = 1'b0;

assign m_axi_wt_BREADY = 1'b0;

assign m_axi_wt_WDATA = 16'd0;

assign m_axi_wt_WID = 1'd0;

assign m_axi_wt_WLAST = 1'b0;

assign m_axi_wt_WSTRB = 2'd0;

assign m_axi_wt_WUSER = 1'd0;

assign m_axi_wt_WVALID = 1'b0;

assign select_ln109_1_fu_228_p3 = ((icmp_ln111_fu_214_p2[0:0] == 1'b1) ? add_ln109_fu_208_p2 : ap_sig_allocacmp_i_load);

assign select_ln109_2_fu_347_p3 = ((icmp_ln111_reg_432_pp0_iter11_reg[0:0] == 1'b1) ? 16'd0 : ap_sig_allocacmp_lhs_load);

assign select_ln109_fu_220_p3 = ((icmp_ln111_fu_214_p2[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_j_load);

assign sext_ln1319_fu_323_p1 = $signed(trunc_ln3_fu_313_p4);

assign shl_ln1319_1_fu_279_p3 = {{select_ln109_reg_437}, {4'd0}};

assign shl_ln1319_2_fu_286_p3 = {{select_ln109_reg_437}, {2'd0}};

assign temp_V_fu_367_p1 = grp_fu_381_p3;

assign trunc_ln3_fu_313_p4 = {{add_ln1319_1_fu_307_p2[63:1]}};

assign zext_ln109_fu_270_p1 = add_ln1319_mid2_v_v_fu_263_p3;

assign zext_ln1319_1_fu_303_p1 = add_ln1319_fu_297_p2;

assign zext_ln1319_fu_293_p1 = shl_ln1319_2_fu_286_p3;

endmodule //tiled_conv_tiled_conv_Pipeline_VITIS_LOOP_109_1_VITIS_LOOP_111_2
