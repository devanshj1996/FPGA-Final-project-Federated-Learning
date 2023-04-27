set moduleName tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH
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
set C_modelName {tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln41_2 int 4 regular  }
	{ max_pool_out_buf_V_0 int 15 regular {array 9 { 1 3 } 1 1 }  }
	{ sub_ln184 int 5 regular  }
	{ layer1_output_V_0 int 15 regular {array 144 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln41_2", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "max_pool_out_buf_V_0", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln184", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "layer1_output_V_0", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln41_2 sc_in sc_lv 4 signal 0 } 
	{ max_pool_out_buf_V_0_address0 sc_out sc_lv 4 signal 1 } 
	{ max_pool_out_buf_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ max_pool_out_buf_V_0_q0 sc_in sc_lv 15 signal 1 } 
	{ sub_ln184 sc_in sc_lv 5 signal 2 } 
	{ layer1_output_V_0_address0 sc_out sc_lv 8 signal 3 } 
	{ layer1_output_V_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ layer1_output_V_0_we0 sc_out sc_logic 1 signal 3 } 
	{ layer1_output_V_0_d0 sc_out sc_lv 15 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln41_2", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trunc_ln41_2", "role": "default" }} , 
 	{ "name": "max_pool_out_buf_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "max_pool_out_buf_V_0", "role": "address0" }} , 
 	{ "name": "max_pool_out_buf_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_pool_out_buf_V_0", "role": "ce0" }} , 
 	{ "name": "max_pool_out_buf_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "max_pool_out_buf_V_0", "role": "q0" }} , 
 	{ "name": "sub_ln184", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sub_ln184", "role": "default" }} , 
 	{ "name": "layer1_output_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layer1_output_V_0", "role": "address0" }} , 
 	{ "name": "layer1_output_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_output_V_0", "role": "ce0" }} , 
 	{ "name": "layer1_output_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer1_output_V_0", "role": "we0" }} , 
 	{ "name": "layer1_output_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "layer1_output_V_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln41_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_pool_out_buf_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub_ln184", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer1_output_V_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	tiled_conv_Pipeline_OUTPUT_BUFFER_HEIGHT_OUTPUT_BUFFER_WIDTH {
		trunc_ln41_2 {Type I LastRead 0 FirstWrite -1}
		max_pool_out_buf_V_0 {Type I LastRead 1 FirstWrite -1}
		sub_ln184 {Type I LastRead 0 FirstWrite -1}
		layer1_output_V_0 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln41_2 { ap_none {  { trunc_ln41_2 in_data 0 4 } } }
	max_pool_out_buf_V_0 { ap_memory {  { max_pool_out_buf_V_0_address0 mem_address 1 4 }  { max_pool_out_buf_V_0_ce0 mem_ce 1 1 }  { max_pool_out_buf_V_0_q0 in_data 0 15 } } }
	sub_ln184 { ap_none {  { sub_ln184 in_data 0 5 } } }
	layer1_output_V_0 { ap_memory {  { layer1_output_V_0_address0 mem_address 1 8 }  { layer1_output_V_0_ce0 mem_ce 1 1 }  { layer1_output_V_0_we0 mem_we 1 1 }  { layer1_output_V_0_d0 mem_din 1 15 } } }
}
