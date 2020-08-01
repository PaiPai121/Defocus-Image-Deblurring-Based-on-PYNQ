set moduleName real_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {real.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ complex_float_s int 64 regular {fifo 2 volatile }  }
	{ p_val float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "complex_float_s", "interface" : "fifo", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "p_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ complex_float_s_dout sc_in sc_lv 64 signal 0 } 
	{ complex_float_s_empty_n sc_in sc_logic 1 signal 0 } 
	{ complex_float_s_read sc_out sc_logic 1 signal 0 } 
	{ complex_float_s_din sc_out sc_lv 64 signal 0 } 
	{ complex_float_s_full_n sc_in sc_logic 1 signal 0 } 
	{ complex_float_s_write sc_out sc_logic 1 signal 0 } 
	{ p_val sc_in sc_lv 32 signal 1 } 
	{ complex_float_s_i_blk_n sc_out sc_logic 1 signal -1 } 
	{ complex_float_s_o_blk_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "complex_float_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "complex_float_s", "role": "dout" }} , 
 	{ "name": "complex_float_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_float_s", "role": "empty_n" }} , 
 	{ "name": "complex_float_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_float_s", "role": "read" }} , 
 	{ "name": "complex_float_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "complex_float_s", "role": "din" }} , 
 	{ "name": "complex_float_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_float_s", "role": "full_n" }} , 
 	{ "name": "complex_float_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_float_s", "role": "write" }} , 
 	{ "name": "p_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_val", "role": "default" }} , 
 	{ "name": "complex_float_s_i_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_float_s_i_blk_n", "role": "default" }} , 
 	{ "name": "complex_float_s_o_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_float_s_o_blk_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "real_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "complex_float_s", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "complex_float_s_i_blk_n", "Type" : "RtlPort"},
					{"Name" : "complex_float_s_o_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "p_val", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	real_1 {
		complex_float_s {Type IO LastRead 0 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	complex_float_s { ap_fifo {  { complex_float_s_dout fifo_data 0 64 }  { complex_float_s_empty_n fifo_status 0 1 }  { complex_float_s_read fifo_update 1 1 }  { complex_float_s_din fifo_data 1 64 }  { complex_float_s_full_n fifo_status 0 1 }  { complex_float_s_write fifo_update 1 1 } } }
	p_val { ap_none {  { p_val in_data 0 32 } } }
}
