set moduleName tiled_conv_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_42_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {tiled_conv_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_42_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ conv_in_buf_V_0 int 16 regular {array 100 { 1 1 1 1 1 1 1 1 1 1 1 1 1 3 3 3 3 } 1 1 }  }
	{ conv_out_buf_V_0 int 15 regular {array 36 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ sext_ln864 int 16 regular  }
	{ sext_ln1393_1 int 16 regular  }
	{ sext_ln1393_2 int 16 regular  }
	{ sext_ln1393_3 int 16 regular  }
	{ sext_ln1393_4 int 16 regular  }
	{ sext_ln1393_5 int 16 regular  }
	{ sext_ln1393_6 int 16 regular  }
	{ sext_ln1393_7 int 16 regular  }
	{ sext_ln1393_8 int 16 regular  }
	{ sext_ln1393_9 int 16 regular  }
	{ sext_ln1393_10 int 16 regular  }
	{ sext_ln1393_11 int 16 regular  }
	{ sext_ln1393_12 int 16 regular  }
	{ sext_ln1393_13 int 16 regular  }
	{ sext_ln1393_14 int 16 regular  }
	{ sext_ln1393_15 int 16 regular  }
	{ sext_ln1393_16 int 16 regular  }
	{ sext_ln1393_17 int 16 regular  }
	{ sext_ln1393_18 int 16 regular  }
	{ sext_ln1393_19 int 16 regular  }
	{ sext_ln1393_20 int 16 regular  }
	{ sext_ln1393_21 int 16 regular  }
	{ sext_ln1393_22 int 16 regular  }
	{ sext_ln1393_23 int 16 regular  }
	{ sext_ln1393_24 int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "conv_in_buf_V_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "conv_out_buf_V_0", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sext_ln864", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1393_24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ conv_in_buf_V_0_address0 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q0 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address1 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q1 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address2 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce2 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q2 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address3 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce3 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q3 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address4 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce4 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q4 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address5 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce5 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q5 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address6 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce6 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q6 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address7 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce7 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q7 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address8 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce8 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q8 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address9 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce9 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q9 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address10 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce10 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q10 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address11 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce11 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q11 sc_in sc_lv 16 signal 0 } 
	{ conv_in_buf_V_0_address12 sc_out sc_lv 7 signal 0 } 
	{ conv_in_buf_V_0_ce12 sc_out sc_logic 1 signal 0 } 
	{ conv_in_buf_V_0_q12 sc_in sc_lv 16 signal 0 } 
	{ conv_out_buf_V_0_address0 sc_out sc_lv 6 signal 1 } 
	{ conv_out_buf_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv_out_buf_V_0_we0 sc_out sc_logic 1 signal 1 } 
	{ conv_out_buf_V_0_d0 sc_out sc_lv 15 signal 1 } 
	{ sext_ln864 sc_in sc_lv 16 signal 2 } 
	{ sext_ln1393_1 sc_in sc_lv 16 signal 3 } 
	{ sext_ln1393_2 sc_in sc_lv 16 signal 4 } 
	{ sext_ln1393_3 sc_in sc_lv 16 signal 5 } 
	{ sext_ln1393_4 sc_in sc_lv 16 signal 6 } 
	{ sext_ln1393_5 sc_in sc_lv 16 signal 7 } 
	{ sext_ln1393_6 sc_in sc_lv 16 signal 8 } 
	{ sext_ln1393_7 sc_in sc_lv 16 signal 9 } 
	{ sext_ln1393_8 sc_in sc_lv 16 signal 10 } 
	{ sext_ln1393_9 sc_in sc_lv 16 signal 11 } 
	{ sext_ln1393_10 sc_in sc_lv 16 signal 12 } 
	{ sext_ln1393_11 sc_in sc_lv 16 signal 13 } 
	{ sext_ln1393_12 sc_in sc_lv 16 signal 14 } 
	{ sext_ln1393_13 sc_in sc_lv 16 signal 15 } 
	{ sext_ln1393_14 sc_in sc_lv 16 signal 16 } 
	{ sext_ln1393_15 sc_in sc_lv 16 signal 17 } 
	{ sext_ln1393_16 sc_in sc_lv 16 signal 18 } 
	{ sext_ln1393_17 sc_in sc_lv 16 signal 19 } 
	{ sext_ln1393_18 sc_in sc_lv 16 signal 20 } 
	{ sext_ln1393_19 sc_in sc_lv 16 signal 21 } 
	{ sext_ln1393_20 sc_in sc_lv 16 signal 22 } 
	{ sext_ln1393_21 sc_in sc_lv 16 signal 23 } 
	{ sext_ln1393_22 sc_in sc_lv 16 signal 24 } 
	{ sext_ln1393_23 sc_in sc_lv 16 signal 25 } 
	{ sext_ln1393_24 sc_in sc_lv 16 signal 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "conv_in_buf_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address0" }} , 
 	{ "name": "conv_in_buf_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce0" }} , 
 	{ "name": "conv_in_buf_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q0" }} , 
 	{ "name": "conv_in_buf_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address1" }} , 
 	{ "name": "conv_in_buf_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce1" }} , 
 	{ "name": "conv_in_buf_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q1" }} , 
 	{ "name": "conv_in_buf_V_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address2" }} , 
 	{ "name": "conv_in_buf_V_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce2" }} , 
 	{ "name": "conv_in_buf_V_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q2" }} , 
 	{ "name": "conv_in_buf_V_0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address3" }} , 
 	{ "name": "conv_in_buf_V_0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce3" }} , 
 	{ "name": "conv_in_buf_V_0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q3" }} , 
 	{ "name": "conv_in_buf_V_0_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address4" }} , 
 	{ "name": "conv_in_buf_V_0_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce4" }} , 
 	{ "name": "conv_in_buf_V_0_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q4" }} , 
 	{ "name": "conv_in_buf_V_0_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address5" }} , 
 	{ "name": "conv_in_buf_V_0_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce5" }} , 
 	{ "name": "conv_in_buf_V_0_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q5" }} , 
 	{ "name": "conv_in_buf_V_0_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address6" }} , 
 	{ "name": "conv_in_buf_V_0_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce6" }} , 
 	{ "name": "conv_in_buf_V_0_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q6" }} , 
 	{ "name": "conv_in_buf_V_0_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address7" }} , 
 	{ "name": "conv_in_buf_V_0_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce7" }} , 
 	{ "name": "conv_in_buf_V_0_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q7" }} , 
 	{ "name": "conv_in_buf_V_0_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address8" }} , 
 	{ "name": "conv_in_buf_V_0_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce8" }} , 
 	{ "name": "conv_in_buf_V_0_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q8" }} , 
 	{ "name": "conv_in_buf_V_0_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address9" }} , 
 	{ "name": "conv_in_buf_V_0_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce9" }} , 
 	{ "name": "conv_in_buf_V_0_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q9" }} , 
 	{ "name": "conv_in_buf_V_0_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address10" }} , 
 	{ "name": "conv_in_buf_V_0_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce10" }} , 
 	{ "name": "conv_in_buf_V_0_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q10" }} , 
 	{ "name": "conv_in_buf_V_0_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address11" }} , 
 	{ "name": "conv_in_buf_V_0_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce11" }} , 
 	{ "name": "conv_in_buf_V_0_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q11" }} , 
 	{ "name": "conv_in_buf_V_0_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "address12" }} , 
 	{ "name": "conv_in_buf_V_0_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "ce12" }} , 
 	{ "name": "conv_in_buf_V_0_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "conv_in_buf_V_0", "role": "q12" }} , 
 	{ "name": "conv_out_buf_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "address0" }} , 
 	{ "name": "conv_out_buf_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "ce0" }} , 
 	{ "name": "conv_out_buf_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "we0" }} , 
 	{ "name": "conv_out_buf_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "d0" }} , 
 	{ "name": "sext_ln864", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln864", "role": "default" }} , 
 	{ "name": "sext_ln1393_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_1", "role": "default" }} , 
 	{ "name": "sext_ln1393_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_2", "role": "default" }} , 
 	{ "name": "sext_ln1393_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_3", "role": "default" }} , 
 	{ "name": "sext_ln1393_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_4", "role": "default" }} , 
 	{ "name": "sext_ln1393_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_5", "role": "default" }} , 
 	{ "name": "sext_ln1393_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_6", "role": "default" }} , 
 	{ "name": "sext_ln1393_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_7", "role": "default" }} , 
 	{ "name": "sext_ln1393_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_8", "role": "default" }} , 
 	{ "name": "sext_ln1393_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_9", "role": "default" }} , 
 	{ "name": "sext_ln1393_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_10", "role": "default" }} , 
 	{ "name": "sext_ln1393_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_11", "role": "default" }} , 
 	{ "name": "sext_ln1393_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_12", "role": "default" }} , 
 	{ "name": "sext_ln1393_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_13", "role": "default" }} , 
 	{ "name": "sext_ln1393_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_14", "role": "default" }} , 
 	{ "name": "sext_ln1393_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_15", "role": "default" }} , 
 	{ "name": "sext_ln1393_16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_16", "role": "default" }} , 
 	{ "name": "sext_ln1393_17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_17", "role": "default" }} , 
 	{ "name": "sext_ln1393_18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_18", "role": "default" }} , 
 	{ "name": "sext_ln1393_19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_19", "role": "default" }} , 
 	{ "name": "sext_ln1393_20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_20", "role": "default" }} , 
 	{ "name": "sext_ln1393_21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_21", "role": "default" }} , 
 	{ "name": "sext_ln1393_22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_22", "role": "default" }} , 
 	{ "name": "sext_ln1393_23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_23", "role": "default" }} , 
 	{ "name": "sext_ln1393_24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln1393_24", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "tiled_conv_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_42_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv_in_buf_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_out_buf_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sext_ln864", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1393_24", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_40_2_VITIS_LOOP_42_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter15", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter15", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_16s_29_4_1_U11", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U12", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U13", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U14", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U15", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U16", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U17", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U18", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U19", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U20", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U21", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U22", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U23", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U24", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U25", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U26", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U27", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U28", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U29", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U30", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U31", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U32", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U33", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U34", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_29ns_29_4_1_U35", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tiled_conv_Pipeline_VITIS_LOOP_40_2_VITIS_LOOP_42_3 {
		conv_in_buf_V_0 {Type I LastRead 3 FirstWrite -1}
		conv_out_buf_V_0 {Type O LastRead -1 FirstWrite 30}
		sext_ln864 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_19 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_21 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_23 {Type I LastRead 0 FirstWrite -1}
		sext_ln1393_24 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102", "Max" : "102"}
	, {"Name" : "Interval", "Min" : "102", "Max" : "102"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	conv_in_buf_V_0 { ap_memory {  { conv_in_buf_V_0_address0 mem_address 1 7 }  { conv_in_buf_V_0_ce0 mem_ce 1 1 }  { conv_in_buf_V_0_q0 mem_dout 0 16 }  { conv_in_buf_V_0_address1 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce1 MemPortCE2 1 1 }  { conv_in_buf_V_0_q1 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address2 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce2 MemPortCE2 1 1 }  { conv_in_buf_V_0_q2 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address3 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce3 MemPortCE2 1 1 }  { conv_in_buf_V_0_q3 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address4 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce4 MemPortCE2 1 1 }  { conv_in_buf_V_0_q4 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address5 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce5 MemPortCE2 1 1 }  { conv_in_buf_V_0_q5 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address6 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce6 MemPortCE2 1 1 }  { conv_in_buf_V_0_q6 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address7 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce7 MemPortCE2 1 1 }  { conv_in_buf_V_0_q7 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address8 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce8 MemPortCE2 1 1 }  { conv_in_buf_V_0_q8 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address9 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce9 MemPortCE2 1 1 }  { conv_in_buf_V_0_q9 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address10 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce10 MemPortCE2 1 1 }  { conv_in_buf_V_0_q10 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address11 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce11 MemPortCE2 1 1 }  { conv_in_buf_V_0_q11 MemPortDOUT2 0 16 }  { conv_in_buf_V_0_address12 MemPortADDR2 1 7 }  { conv_in_buf_V_0_ce12 MemPortCE2 1 1 }  { conv_in_buf_V_0_q12 in_data 0 16 } } }
	conv_out_buf_V_0 { ap_memory {  { conv_out_buf_V_0_address0 mem_address 1 6 }  { conv_out_buf_V_0_ce0 mem_ce 1 1 }  { conv_out_buf_V_0_we0 mem_we 1 1 }  { conv_out_buf_V_0_d0 mem_din 1 15 } } }
	sext_ln864 { ap_none {  { sext_ln864 in_data 0 16 } } }
	sext_ln1393_1 { ap_none {  { sext_ln1393_1 in_data 0 16 } } }
	sext_ln1393_2 { ap_none {  { sext_ln1393_2 in_data 0 16 } } }
	sext_ln1393_3 { ap_none {  { sext_ln1393_3 in_data 0 16 } } }
	sext_ln1393_4 { ap_none {  { sext_ln1393_4 in_data 0 16 } } }
	sext_ln1393_5 { ap_none {  { sext_ln1393_5 in_data 0 16 } } }
	sext_ln1393_6 { ap_none {  { sext_ln1393_6 in_data 0 16 } } }
	sext_ln1393_7 { ap_none {  { sext_ln1393_7 in_data 0 16 } } }
	sext_ln1393_8 { ap_none {  { sext_ln1393_8 in_data 0 16 } } }
	sext_ln1393_9 { ap_none {  { sext_ln1393_9 in_data 0 16 } } }
	sext_ln1393_10 { ap_none {  { sext_ln1393_10 in_data 0 16 } } }
	sext_ln1393_11 { ap_none {  { sext_ln1393_11 in_data 0 16 } } }
	sext_ln1393_12 { ap_none {  { sext_ln1393_12 in_data 0 16 } } }
	sext_ln1393_13 { ap_none {  { sext_ln1393_13 in_data 0 16 } } }
	sext_ln1393_14 { ap_none {  { sext_ln1393_14 in_data 0 16 } } }
	sext_ln1393_15 { ap_none {  { sext_ln1393_15 in_data 0 16 } } }
	sext_ln1393_16 { ap_none {  { sext_ln1393_16 in_data 0 16 } } }
	sext_ln1393_17 { ap_none {  { sext_ln1393_17 in_data 0 16 } } }
	sext_ln1393_18 { ap_none {  { sext_ln1393_18 in_data 0 16 } } }
	sext_ln1393_19 { ap_none {  { sext_ln1393_19 in_data 0 16 } } }
	sext_ln1393_20 { ap_none {  { sext_ln1393_20 in_data 0 16 } } }
	sext_ln1393_21 { ap_none {  { sext_ln1393_21 in_data 0 16 } } }
	sext_ln1393_22 { ap_none {  { sext_ln1393_22 in_data 0 16 } } }
	sext_ln1393_23 { ap_none {  { sext_ln1393_23 in_data 0 16 } } }
	sext_ln1393_24 { ap_none {  { sext_ln1393_24 in_data 0 16 } } }
}
