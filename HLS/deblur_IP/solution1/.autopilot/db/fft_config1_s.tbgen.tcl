set moduleName fft_config1_s
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {fft<config1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ xn int 64 regular {fifo 0 volatile }  }
	{ xk int 64 regular {fifo 1 volatile }  }
	{ status_data_V int 8 regular {fifo 1}  }
	{ config_ch_data_V int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "xn", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "xk", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "status_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "config_ch_data_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ xn_dout sc_in sc_lv 64 signal 0 } 
	{ xn_empty_n sc_in sc_logic 1 signal 0 } 
	{ xn_read sc_out sc_logic 1 signal 0 } 
	{ xk_din sc_out sc_lv 64 signal 1 } 
	{ xk_full_n sc_in sc_logic 1 signal 1 } 
	{ xk_write sc_out sc_logic 1 signal 1 } 
	{ status_data_V_din sc_out sc_lv 8 signal 2 } 
	{ status_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ status_data_V_write sc_out sc_logic 1 signal 2 } 
	{ config_ch_data_V_dout sc_in sc_lv 16 signal 3 } 
	{ config_ch_data_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ config_ch_data_V_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "xn_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xn", "role": "dout" }} , 
 	{ "name": "xn_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xn", "role": "empty_n" }} , 
 	{ "name": "xn_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xn", "role": "read" }} , 
 	{ "name": "xk_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "xk", "role": "din" }} , 
 	{ "name": "xk_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk", "role": "full_n" }} , 
 	{ "name": "xk_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk", "role": "write" }} , 
 	{ "name": "status_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "status_data_V", "role": "din" }} , 
 	{ "name": "status_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status_data_V", "role": "full_n" }} , 
 	{ "name": "status_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "status_data_V", "role": "write" }} , 
 	{ "name": "config_ch_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "config_ch_data_V", "role": "dout" }} , 
 	{ "name": "config_ch_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config_ch_data_V", "role": "empty_n" }} , 
 	{ "name": "config_ch_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "config_ch_data_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "fft_config1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "874", "EstimateLatencyMax" : "874",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	fft_config1_s {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "874", "Max" : "874"}
	, {"Name" : "Interval", "Min" : "874", "Max" : "874"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	xn { ap_fifo {  { xn_dout fifo_data 0 64 }  { xn_empty_n fifo_status 0 1 }  { xn_read fifo_update 1 1 } } }
	xk { ap_fifo {  { xk_din fifo_data 1 64 }  { xk_full_n fifo_status 0 1 }  { xk_write fifo_update 1 1 } } }
	status_data_V { ap_fifo {  { status_data_V_din fifo_data 1 8 }  { status_data_V_full_n fifo_status 0 1 }  { status_data_V_write fifo_update 1 1 } } }
	config_ch_data_V { ap_fifo {  { config_ch_data_V_dout fifo_data 0 16 }  { config_ch_data_V_empty_n fifo_status 0 1 }  { config_ch_data_V_read fifo_update 1 1 } } }
}
