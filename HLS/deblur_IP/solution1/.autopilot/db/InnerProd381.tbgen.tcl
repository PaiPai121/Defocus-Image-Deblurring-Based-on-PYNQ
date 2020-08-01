set moduleName InnerProd381
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
set C_modelName {InnerProd381}
set C_modelType { void 0 }
set C_modelArgList {
	{ gauss_blur_M_real float 32 regular {fifo 0 volatile } {global 0}  }
	{ gauss_blur_M_imag float 32 regular {fifo 0 volatile } {global 0}  }
	{ G_M_real float 32 regular {fifo 0 volatile } {global 0}  }
	{ G_M_imag float 32 regular {fifo 0 volatile } {global 0}  }
	{ xk1_M_real float 32 regular {fifo 1 volatile } {global 1}  }
	{ xk1_M_imag float 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gauss_blur_M_real", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "gauss_blur_M_imag", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "G_M_real", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "G_M_imag", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "xk1_M_real", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "xk1_M_imag", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gauss_blur_M_real_dout sc_in sc_lv 32 signal 0 } 
	{ gauss_blur_M_real_empty_n sc_in sc_logic 1 signal 0 } 
	{ gauss_blur_M_real_read sc_out sc_logic 1 signal 0 } 
	{ gauss_blur_M_imag_dout sc_in sc_lv 32 signal 1 } 
	{ gauss_blur_M_imag_empty_n sc_in sc_logic 1 signal 1 } 
	{ gauss_blur_M_imag_read sc_out sc_logic 1 signal 1 } 
	{ G_M_real_dout sc_in sc_lv 32 signal 2 } 
	{ G_M_real_empty_n sc_in sc_logic 1 signal 2 } 
	{ G_M_real_read sc_out sc_logic 1 signal 2 } 
	{ G_M_imag_dout sc_in sc_lv 32 signal 3 } 
	{ G_M_imag_empty_n sc_in sc_logic 1 signal 3 } 
	{ G_M_imag_read sc_out sc_logic 1 signal 3 } 
	{ xk1_M_real_din sc_out sc_lv 32 signal 4 } 
	{ xk1_M_real_full_n sc_in sc_logic 1 signal 4 } 
	{ xk1_M_real_write sc_out sc_logic 1 signal 4 } 
	{ xk1_M_imag_din sc_out sc_lv 32 signal 5 } 
	{ xk1_M_imag_full_n sc_in sc_logic 1 signal 5 } 
	{ xk1_M_imag_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gauss_blur_M_real_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gauss_blur_M_real", "role": "dout" }} , 
 	{ "name": "gauss_blur_M_real_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_blur_M_real", "role": "empty_n" }} , 
 	{ "name": "gauss_blur_M_real_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_blur_M_real", "role": "read" }} , 
 	{ "name": "gauss_blur_M_imag_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gauss_blur_M_imag", "role": "dout" }} , 
 	{ "name": "gauss_blur_M_imag_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_blur_M_imag", "role": "empty_n" }} , 
 	{ "name": "gauss_blur_M_imag_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gauss_blur_M_imag", "role": "read" }} , 
 	{ "name": "G_M_real_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_M_real", "role": "dout" }} , 
 	{ "name": "G_M_real_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G_M_real", "role": "empty_n" }} , 
 	{ "name": "G_M_real_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G_M_real", "role": "read" }} , 
 	{ "name": "G_M_imag_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G_M_imag", "role": "dout" }} , 
 	{ "name": "G_M_imag_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G_M_imag", "role": "empty_n" }} , 
 	{ "name": "G_M_imag_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G_M_imag", "role": "read" }} , 
 	{ "name": "xk1_M_real_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xk1_M_real", "role": "din" }} , 
 	{ "name": "xk1_M_real_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk1_M_real", "role": "full_n" }} , 
 	{ "name": "xk1_M_real_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk1_M_real", "role": "write" }} , 
 	{ "name": "xk1_M_imag_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xk1_M_imag", "role": "din" }} , 
 	{ "name": "xk1_M_imag_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk1_M_imag", "role": "full_n" }} , 
 	{ "name": "xk1_M_imag_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xk1_M_imag", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "InnerProd381",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "655871", "EstimateLatencyMax" : "655872",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gauss_blur_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gauss_blur_M_real_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "gauss_blur_M_real"}]},
			{"Name" : "gauss_blur_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gauss_blur_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "gauss_blur_M_imag"}]},
			{"Name" : "G_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "G_M_real_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "G_M_real"}]},
			{"Name" : "G_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "G_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "G_M_imag"}]},
			{"Name" : "xk1_M_real", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "xk1_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xk1_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "xk1_M_imag_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_mul_float_fu_97", "SubBlockPort" : ["gauss_blur_M_real_blk_n", "gauss_blur_M_imag_blk_n", "G_M_real_blk_n", "G_M_imag_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "operator_mul_float",
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
			{"Name" : "gauss_blur_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gauss_blur_M_real_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "gauss_blur_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gauss_blur_M_imag_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "G_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "G_M_real_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_operator_mul_assign_float_fu_34", "Port" : "p_z_M_real"}]},
			{"Name" : "G_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "G_M_imag_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_operator_mul_assign_float_fu_34", "Port" : "p_z_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_mul_assign_float_fu_34", "SubBlockPort" : ["p_z_M_real_blk_n", "p_z_M_imag_blk_n"]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fsubbkb_U120", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_faddibs_U121", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U122", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U123", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U124", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U125", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	InnerProd381 {
		gauss_blur_M_real {Type I LastRead 0 FirstWrite -1}
		gauss_blur_M_imag {Type I LastRead 0 FirstWrite -1}
		G_M_real {Type I LastRead 0 FirstWrite -1}
		G_M_imag {Type I LastRead 0 FirstWrite -1}
		xk1_M_real {Type O LastRead -1 FirstWrite 12}
		xk1_M_imag {Type O LastRead -1 FirstWrite 12}}
	operator_mul_float {
		gauss_blur_M_real {Type I LastRead 0 FirstWrite -1}
		gauss_blur_M_imag {Type I LastRead 0 FirstWrite -1}
		G_M_real {Type I LastRead 0 FirstWrite -1}
		G_M_imag {Type I LastRead 0 FirstWrite -1}}
	operator_mul_assign_float {
		complex_float_M_real_read {Type I LastRead 0 FirstWrite -1}
		complex_float_M_imag_read {Type I LastRead 0 FirstWrite -1}
		p_z_M_real {Type I LastRead 0 FirstWrite -1}
		p_z_M_imag {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "655871", "Max" : "655872"}
	, {"Name" : "Interval", "Min" : "655871", "Max" : "655872"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gauss_blur_M_real { ap_fifo {  { gauss_blur_M_real_dout fifo_data 0 32 }  { gauss_blur_M_real_empty_n fifo_status 0 1 }  { gauss_blur_M_real_read fifo_update 1 1 } } }
	gauss_blur_M_imag { ap_fifo {  { gauss_blur_M_imag_dout fifo_data 0 32 }  { gauss_blur_M_imag_empty_n fifo_status 0 1 }  { gauss_blur_M_imag_read fifo_update 1 1 } } }
	G_M_real { ap_fifo {  { G_M_real_dout fifo_data 0 32 }  { G_M_real_empty_n fifo_status 0 1 }  { G_M_real_read fifo_update 1 1 } } }
	G_M_imag { ap_fifo {  { G_M_imag_dout fifo_data 0 32 }  { G_M_imag_empty_n fifo_status 0 1 }  { G_M_imag_read fifo_update 1 1 } } }
	xk1_M_real { ap_fifo {  { xk1_M_real_din fifo_data 1 32 }  { xk1_M_real_full_n fifo_status 0 1 }  { xk1_M_real_write fifo_update 1 1 } } }
	xk1_M_imag { ap_fifo {  { xk1_M_imag_din fifo_data 1 32 }  { xk1_M_imag_full_n fifo_status 0 1 }  { xk1_M_imag_write fifo_update 1 1 } } }
}
