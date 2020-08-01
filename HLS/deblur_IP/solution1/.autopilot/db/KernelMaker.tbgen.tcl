set moduleName KernelMaker
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
set C_modelName {KernelMaker}
set C_modelType { void 0 }
set C_modelArgList {
	{ kernel_M_real float 32 regular {fifo 1 volatile } {global 1}  }
	{ kernel_M_imag float 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "kernel_M_real", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "kernel_M_imag", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ kernel_M_real_din sc_out sc_lv 32 signal 0 } 
	{ kernel_M_real_full_n sc_in sc_logic 1 signal 0 } 
	{ kernel_M_real_write sc_out sc_logic 1 signal 0 } 
	{ kernel_M_imag_din sc_out sc_lv 32 signal 1 } 
	{ kernel_M_imag_full_n sc_in sc_logic 1 signal 1 } 
	{ kernel_M_imag_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "kernel_M_real_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_M_real", "role": "din" }} , 
 	{ "name": "kernel_M_real_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_M_real", "role": "full_n" }} , 
 	{ "name": "kernel_M_real_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_M_real", "role": "write" }} , 
 	{ "name": "kernel_M_imag_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_M_imag", "role": "din" }} , 
 	{ "name": "kernel_M_imag_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_M_imag", "role": "full_n" }} , 
 	{ "name": "kernel_M_imag_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel_M_imag", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "KernelMaker",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1769985", "EstimateLatencyMax" : "1769985",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "kernel_M_real", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_M_real_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "StgValue_88_real379_fu_68", "Port" : "complex_float_M_real"}]},
			{"Name" : "kernel_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "StgValue_89_imag380_fu_75", "Port" : "complex_float_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "StgValue_88_real379_fu_68", "SubBlockPort" : ["complex_float_M_real_blk_n"]},
			{"SubInstance" : "StgValue_89_imag380_fu_75", "SubBlockPort" : ["complex_float_M_imag_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StgValue_88_real379_fu_68", "Parent" : "0",
		"CDFG" : "real379",
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
			{"Name" : "complex_float_M_real", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "complex_float_M_real_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "p_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.StgValue_89_imag380_fu_75", "Parent" : "0",
		"CDFG" : "imag380",
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
			{"Name" : "complex_float_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "complex_float_M_imag_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "p_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WienerDeblur_fptreOg_U32", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WienerDeblur_sitofYi_U33", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WienerDeblur_dexpg8j_U34", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WienerDeblur_mac_hbi_U35", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KernelMaker {
		kernel_M_real {Type O LastRead -1 FirstWrite 0}
		kernel_M_imag {Type O LastRead -1 FirstWrite 0}}
	real379 {
		complex_float_M_real {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	imag380 {
		complex_float_M_imag {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1769985", "Max" : "1769985"}
	, {"Name" : "Interval", "Min" : "1769985", "Max" : "1769985"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	kernel_M_real { ap_fifo {  { kernel_M_real_din fifo_data 1 32 }  { kernel_M_real_full_n fifo_status 0 1 }  { kernel_M_real_write fifo_update 1 1 } } }
	kernel_M_imag { ap_fifo {  { kernel_M_imag_din fifo_data 1 32 }  { kernel_M_imag_full_n fifo_status 0 1 }  { kernel_M_imag_write fifo_update 1 1 } } }
}
