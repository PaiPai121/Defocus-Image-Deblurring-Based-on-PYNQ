set moduleName operator_float_1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {operator*<float>.1}
set C_modelType { int 64 }
set C_modelArgList {
	{ fft_kernel_modu_M_r float 32 regular {fifo 0 volatile } {global 0}  }
	{ fft_kernel_modu_M_i float 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fft_kernel_modu_M_r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "fft_kernel_modu_M_i", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fft_kernel_modu_M_r_dout sc_in sc_lv 32 signal 0 } 
	{ fft_kernel_modu_M_r_empty_n sc_in sc_logic 1 signal 0 } 
	{ fft_kernel_modu_M_r_read sc_out sc_logic 1 signal 0 } 
	{ fft_kernel_modu_M_i_dout sc_in sc_lv 32 signal 1 } 
	{ fft_kernel_modu_M_i_empty_n sc_in sc_logic 1 signal 1 } 
	{ fft_kernel_modu_M_i_read sc_out sc_logic 1 signal 1 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ fft_kernel_modu_M_r_blk_n sc_out sc_logic 1 signal -1 } 
	{ fft_kernel_modu_M_i_blk_n sc_out sc_logic 1 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fft_kernel_modu_M_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_r", "role": "dout" }} , 
 	{ "name": "fft_kernel_modu_M_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_r", "role": "empty_n" }} , 
 	{ "name": "fft_kernel_modu_M_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_r", "role": "read" }} , 
 	{ "name": "fft_kernel_modu_M_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_i", "role": "dout" }} , 
 	{ "name": "fft_kernel_modu_M_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_i", "role": "empty_n" }} , 
 	{ "name": "fft_kernel_modu_M_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_i", "role": "read" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "fft_kernel_modu_M_r_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_r_blk_n", "role": "default" }} , 
 	{ "name": "fft_kernel_modu_M_i_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_kernel_modu_M_i_blk_n", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "operator_float_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "11",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fft_kernel_modu_M_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_r_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_operator_mul_assign_float_fu_30", "Port" : "p_z_M_real"}]},
			{"Name" : "fft_kernel_modu_M_i", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_i_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_operator_mul_assign_float_fu_30", "Port" : "p_z_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_mul_assign_float_fu_30", "SubBlockPort" : ["p_z_M_real_blk_n", "p_z_M_imag_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_float_fu_30", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "operator_mul_assign_float",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "complex_float_M_real_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "complex_float_M_imag_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_z_M_real_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "p_z_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_z_M_imag_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_float_fu_30.WienerDeblur_fsubbkb_U120", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_float_fu_30.WienerDeblur_faddibs_U121", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U122", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U123", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U124", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U125", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	operator_float_1 {
		fft_kernel_modu_M_r {Type I LastRead 0 FirstWrite -1}
		fft_kernel_modu_M_i {Type I LastRead 0 FirstWrite -1}}
	operator_mul_assign_float {
		complex_float_M_real_read {Type I LastRead 0 FirstWrite -1}
		complex_float_M_imag_read {Type I LastRead 0 FirstWrite -1}
		p_z_M_real {Type I LastRead 0 FirstWrite -1}
		p_z_M_imag {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fft_kernel_modu_M_r { ap_fifo {  { fft_kernel_modu_M_r_dout fifo_data 0 32 }  { fft_kernel_modu_M_r_empty_n fifo_status 0 1 }  { fft_kernel_modu_M_r_read fifo_update 1 1 } } }
	fft_kernel_modu_M_i { ap_fifo {  { fft_kernel_modu_M_i_dout fifo_data 0 32 }  { fft_kernel_modu_M_i_empty_n fifo_status 0 1 }  { fft_kernel_modu_M_i_read fifo_update 1 1 } } }
}
