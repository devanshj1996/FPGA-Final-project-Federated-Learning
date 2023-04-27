set moduleName tiled_conv_Pipeline_VITIS_LOOP_73_2_VITIS_LOOP_74_3
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
set C_modelName {tiled_conv_Pipeline_VITIS_LOOP_73_2_VITIS_LOOP_74_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ max_pool_out_buf_V_0 int 15 regular {array 9 { 0 3 } 0 1 }  }
	{ conv_out_buf_V_0 int 15 regular {array 36 { 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "max_pool_out_buf_V_0", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_buf_V_0", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ max_pool_out_buf_V_0_address0 sc_out sc_lv 4 signal 0 } 
	{ max_pool_out_buf_V_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ max_pool_out_buf_V_0_we0 sc_out sc_logic 1 signal 0 } 
	{ max_pool_out_buf_V_0_d0 sc_out sc_lv 15 signal 0 } 
	{ conv_out_buf_V_0_address0 sc_out sc_lv 6 signal 1 } 
	{ conv_out_buf_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv_out_buf_V_0_q0 sc_in sc_lv 15 signal 1 } 
	{ conv_out_buf_V_0_address1 sc_out sc_lv 6 signal 1 } 
	{ conv_out_buf_V_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ conv_out_buf_V_0_q1 sc_in sc_lv 15 signal 1 } 
	{ conv_out_buf_V_0_address2 sc_out sc_lv 6 signal 1 } 
	{ conv_out_buf_V_0_ce2 sc_out sc_logic 1 signal 1 } 
	{ conv_out_buf_V_0_q2 sc_in sc_lv 15 signal 1 } 
	{ conv_out_buf_V_0_address3 sc_out sc_lv 6 signal 1 } 
	{ conv_out_buf_V_0_ce3 sc_out sc_logic 1 signal 1 } 
	{ conv_out_buf_V_0_q3 sc_in sc_lv 15 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "max_pool_out_buf_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "max_pool_out_buf_V_0", "role": "address0" }} , 
 	{ "name": "max_pool_out_buf_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_pool_out_buf_V_0", "role": "ce0" }} , 
 	{ "name": "max_pool_out_buf_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_pool_out_buf_V_0", "role": "we0" }} , 
 	{ "name": "max_pool_out_buf_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "max_pool_out_buf_V_0", "role": "d0" }} , 
 	{ "name": "conv_out_buf_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "address0" }} , 
 	{ "name": "conv_out_buf_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "ce0" }} , 
 	{ "name": "conv_out_buf_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "q0" }} , 
 	{ "name": "conv_out_buf_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "address1" }} , 
 	{ "name": "conv_out_buf_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "ce1" }} , 
 	{ "name": "conv_out_buf_V_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "q1" }} , 
 	{ "name": "conv_out_buf_V_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "address2" }} , 
 	{ "name": "conv_out_buf_V_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "ce2" }} , 
 	{ "name": "conv_out_buf_V_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "q2" }} , 
 	{ "name": "conv_out_buf_V_0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "address3" }} , 
 	{ "name": "conv_out_buf_V_0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "ce3" }} , 
 	{ "name": "conv_out_buf_V_0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "conv_out_buf_V_0", "role": "q3" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "tiled_conv_Pipeline_VITIS_LOOP_73_2_VITIS_LOOP_74_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_pool_out_buf_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_out_buf_V_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_73_2_VITIS_LOOP_74_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tiled_conv_Pipeline_VITIS_LOOP_73_2_VITIS_LOOP_74_3 {
		max_pool_out_buf_V_0 {Type O LastRead -1 FirstWrite 4}
		conv_out_buf_V_0 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	max_pool_out_buf_V_0 { ap_memory {  { max_pool_out_buf_V_0_address0 mem_address 1 4 }  { max_pool_out_buf_V_0_ce0 mem_ce 1 1 }  { max_pool_out_buf_V_0_we0 mem_we 1 1 }  { max_pool_out_buf_V_0_d0 mem_din 1 15 } } }
	conv_out_buf_V_0 { ap_memory {  { conv_out_buf_V_0_address0 mem_address 1 6 }  { conv_out_buf_V_0_ce0 mem_ce 1 1 }  { conv_out_buf_V_0_q0 mem_dout 0 15 }  { conv_out_buf_V_0_address1 MemPortADDR2 1 6 }  { conv_out_buf_V_0_ce1 MemPortCE2 1 1 }  { conv_out_buf_V_0_q1 MemPortDOUT2 0 15 }  { conv_out_buf_V_0_address2 MemPortADDR2 1 6 }  { conv_out_buf_V_0_ce2 MemPortCE2 1 1 }  { conv_out_buf_V_0_q2 in_data 0 15 }  { conv_out_buf_V_0_address3 MemPortADDR2 1 6 }  { conv_out_buf_V_0_ce3 MemPortCE2 1 1 }  { conv_out_buf_V_0_q3 in_data 0 15 } } }
}
