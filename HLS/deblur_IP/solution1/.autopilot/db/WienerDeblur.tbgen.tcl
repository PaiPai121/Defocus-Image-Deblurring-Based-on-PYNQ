set moduleName WienerDeblur
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
set C_modelName {WienerDeblur}
set C_modelType { void 0 }
set C_modelArgList {
	{ INPUT_data_V int 32 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ INPUT_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ INPUT_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ OUTPUT_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ OUTPUT_user_V int 1 regular {axi_s 1 volatile  { out_stream User } }  }
	{ OUTPUT_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ rows_V int 32 regular {axi_slave 0}  }
	{ cols_V int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "INPUT_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "INPUT_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "OUTPUT_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rows_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_stable","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rows.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":20}, "offset_end" : {"in":27}} , 
 	{ "Name" : "cols_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_stable","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cols.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":28}, "offset_end" : {"in":35}} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 2 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 1 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 2 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 3 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 5 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 3 } 
	{ out_stream_TUSER sc_out sc_lv 1 signal 4 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 5 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ AXI_LITE_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n_AXI_LITE_clk sc_in sc_logic 1 reset -1 active_unknown } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"WienerDeblur","role":"start","value":"0","valid_bit":"0"},{"name":"WienerDeblur","role":"continue","value":"0","valid_bit":"4"},{"name":"WienerDeblur","role":"auto_start","value":"0","valid_bit":"7"},{"name":"rows_V","role":"data","value":"20"},{"name":"cols_V","role":"data","value":"28"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"WienerDeblur","role":"start","value":"0","valid_bit":"0"},{"name":"WienerDeblur","role":"done","value":"0","valid_bit":"1"},{"name":"WienerDeblur","role":"idle","value":"0","valid_bit":"2"},{"name":"WienerDeblur","role":"ready","value":"0","valid_bit":"3"},{"name":"WienerDeblur","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "AXI_LITE_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "CONTROL_BUS", "role": "axilite_clk" } },
	{ "name": "ap_rst_n_AXI_LITE_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "CONTROL_BUS", "role": "axilite_rst" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "INPUT_data_V", "role": "TA" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "INPUT_last_V", "role": "LID" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "INPUT_last_V", "role": "ADY" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_user_V", "role": "ER" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "INPUT_last_V", "role": "ST" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUTPUT_data_V", "role": "TA" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OUTPUT_last_V", "role": "LID" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "OUTPUT_data_V", "role": "ADY" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_user_V", "role": "ER" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUTPUT_last_V", "role": "ST" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "64", "78", "92", "106", "113", "122", "131", "140", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187"],
		"CDFG" : "WienerDeblur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_modulus_fu_1143"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_1179"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_1179"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_1179"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_1179"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_1179"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_top_fu_1179"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_div_1_fu_1204"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_div_fu_1216"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KernelMaker_fu_1232"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_InnerProd_1_fu_1240"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_InnerProd381_fu_1252"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_InnerProd382_fu_1268"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_plus_SNR_fu_1284"}],
		"Port" : [
			{"Name" : "INPUT_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "INPUT_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "INPUT_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "OUTPUT_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "OUTPUT_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "OUTPUT_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "rows_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "cols_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "guard_variable_for_W", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_KernelMaker_fu_1232", "Port" : "kernel_M_real"}]},
			{"Name" : "kernel_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_KernelMaker_fu_1232", "Port" : "kernel_M_imag"}]},
			{"Name" : "xn1_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_real379_fu_1320", "Port" : "complex_float_M_real"}]},
			{"Name" : "xn1_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_imag380_fu_1332", "Port" : "complex_float_M_imag"}]},
			{"Name" : "in1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "in_r"},
					{"ID" : "144", "SubInstance" : "grp_real_1_fu_1296", "Port" : "complex_float_s"},
					{"ID" : "145", "SubInstance" : "grp_imag_1_fu_1308", "Port" : "complex_float_s"}]},
			{"Name" : "xn1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "xn1"}]},
			{"Name" : "xk1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "xk1"}]},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "out_r"}]},
			{"Name" : "middle_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_real379_fu_1320", "Port" : "complex_float_M_real"}]},
			{"Name" : "middle_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_imag380_fu_1332", "Port" : "complex_float_M_imag"}]},
			{"Name" : "in2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "in_r"},
					{"ID" : "144", "SubInstance" : "grp_real_1_fu_1296", "Port" : "complex_float_s"},
					{"ID" : "145", "SubInstance" : "grp_imag_1_fu_1308", "Port" : "complex_float_s"}]},
			{"Name" : "out2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "out_r"}]},
			{"Name" : "xk1_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_real379_fu_1320", "Port" : "complex_float_M_real"},
					{"ID" : "122", "SubInstance" : "grp_InnerProd381_fu_1252", "Port" : "xk1_M_real"},
					{"ID" : "131", "SubInstance" : "grp_InnerProd382_fu_1268", "Port" : "xk1_M_real"}]},
			{"Name" : "xk1_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_imag380_fu_1332", "Port" : "complex_float_M_imag"},
					{"ID" : "122", "SubInstance" : "grp_InnerProd381_fu_1252", "Port" : "xk1_M_imag"},
					{"ID" : "131", "SubInstance" : "grp_InnerProd382_fu_1268", "Port" : "xk1_M_imag"}]},
			{"Name" : "in3", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "in_r"},
					{"ID" : "144", "SubInstance" : "grp_real_1_fu_1296", "Port" : "complex_float_s"},
					{"ID" : "145", "SubInstance" : "grp_imag_1_fu_1308", "Port" : "complex_float_s"}]},
			{"Name" : "out3", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "out_r"}]},
			{"Name" : "in4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "in_r"},
					{"ID" : "144", "SubInstance" : "grp_real_1_fu_1296", "Port" : "complex_float_s"},
					{"ID" : "145", "SubInstance" : "grp_imag_1_fu_1308", "Port" : "complex_float_s"}]},
			{"Name" : "out4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "out_r"}]},
			{"Name" : "fft_kernel_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_real379_fu_1320", "Port" : "complex_float_M_real"},
					{"ID" : "92", "SubInstance" : "grp_matrix_div_fu_1216", "Port" : "fft_kernel_M_real"},
					{"ID" : "131", "SubInstance" : "grp_InnerProd382_fu_1268", "Port" : "fft_kernel_M_real"},
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "fft_kernel_M_real"}]},
			{"Name" : "fft_kernel_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_matrix_div_fu_1216", "Port" : "fft_kernel_M_imag"},
					{"ID" : "147", "SubInstance" : "grp_imag380_fu_1332", "Port" : "complex_float_M_imag"},
					{"ID" : "131", "SubInstance" : "grp_InnerProd382_fu_1268", "Port" : "fft_kernel_M_imag"},
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "fft_kernel_M_imag"}]},
			{"Name" : "gauss_blur_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_InnerProd381_fu_1252", "Port" : "gauss_blur_M_real"},
					{"ID" : "131", "SubInstance" : "grp_InnerProd382_fu_1268", "Port" : "gauss_blur_M_real"}]},
			{"Name" : "gauss_blur_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "122", "SubInstance" : "grp_InnerProd381_fu_1252", "Port" : "gauss_blur_M_imag"},
					{"ID" : "131", "SubInstance" : "grp_InnerProd382_fu_1268", "Port" : "gauss_blur_M_imag"}]},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_20"}]},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_19"}]},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_16"}]},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_17"}]},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_9"}]},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_12"}]},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_13"}]},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_14"}]},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_15"}]},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_18"}]},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo"}]},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "pow_reduce_anonymo_21"}]},
			{"Name" : "fft_kernel_modu_M_r", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "fft_kernel_modu_M_r"},
					{"ID" : "113", "SubInstance" : "grp_InnerProd_1_fu_1240", "Port" : "fft_kernel_modu_M_r"}]},
			{"Name" : "fft_kernel_modu_M_i", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_matrix_modulus_fu_1143", "Port" : "fft_kernel_modu_M_i"},
					{"ID" : "113", "SubInstance" : "grp_InnerProd_1_fu_1240", "Port" : "fft_kernel_modu_M_i"}]},
			{"Name" : "fft_kernel_modu2_M_s", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_matrix_plus_SNR_fu_1284", "Port" : "fft_kernel_modu2_M_s"},
					{"ID" : "78", "SubInstance" : "grp_matrix_div_1_fu_1204", "Port" : "fft_kernel_modu2_M_s"},
					{"ID" : "113", "SubInstance" : "grp_InnerProd_1_fu_1240", "Port" : "fft_kernel_modu2_M_s"}]},
			{"Name" : "fft_kernel_modu2_M_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_matrix_plus_SNR_fu_1284", "Port" : "fft_kernel_modu2_M_1"},
					{"ID" : "78", "SubInstance" : "grp_matrix_div_1_fu_1204", "Port" : "fft_kernel_modu2_M_1"},
					{"ID" : "113", "SubInstance" : "grp_InnerProd_1_fu_1240", "Port" : "fft_kernel_modu2_M_1"}]},
			{"Name" : "G1_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_matrix_div_fu_1216", "Port" : "G1_M_real"},
					{"ID" : "140", "SubInstance" : "grp_matrix_plus_SNR_fu_1284", "Port" : "G1_M_real"},
					{"ID" : "78", "SubInstance" : "grp_matrix_div_1_fu_1204", "Port" : "G1_M_real"}]},
			{"Name" : "G1_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_matrix_div_fu_1216", "Port" : "G1_M_imag"},
					{"ID" : "140", "SubInstance" : "grp_matrix_plus_SNR_fu_1284", "Port" : "G1_M_imag"},
					{"ID" : "78", "SubInstance" : "grp_matrix_div_1_fu_1204", "Port" : "G1_M_imag"}]},
			{"Name" : "G_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_matrix_div_fu_1216", "Port" : "G_M_real"},
					{"ID" : "122", "SubInstance" : "grp_InnerProd381_fu_1252", "Port" : "G_M_real"}]},
			{"Name" : "G_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_matrix_div_fu_1216", "Port" : "G_M_imag"},
					{"ID" : "122", "SubInstance" : "grp_InnerProd381_fu_1252", "Port" : "G_M_imag"}]},
			{"Name" : "in5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "in_r"},
					{"ID" : "144", "SubInstance" : "grp_real_1_fu_1296", "Port" : "complex_float_s"},
					{"ID" : "145", "SubInstance" : "grp_imag_1_fu_1308", "Port" : "complex_float_s"}]},
			{"Name" : "out5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "out_r"}]},
			{"Name" : "middle2_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_real379_fu_1320", "Port" : "complex_float_M_real"}]},
			{"Name" : "middle2_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_imag380_fu_1332", "Port" : "complex_float_M_imag"}]},
			{"Name" : "in6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "in_r"},
					{"ID" : "144", "SubInstance" : "grp_real_1_fu_1296", "Port" : "complex_float_s"},
					{"ID" : "145", "SubInstance" : "grp_imag_1_fu_1308", "Port" : "complex_float_s"}]},
			{"Name" : "out6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_fft_top_fu_1179", "Port" : "out_r"}]},
			{"Name" : "xk2_M_real", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_real379_fu_1320", "Port" : "complex_float_M_real"}]},
			{"Name" : "xk2_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "147", "SubInstance" : "grp_imag380_fu_1332", "Port" : "complex_float_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_real_1_fu_1296", "SubBlockPort" : ["complex_float_s_i_blk_n", "complex_float_s_o_blk_n"]},
			{"SubInstance" : "grp_imag_1_fu_1308", "SubBlockPort" : ["complex_float_s_i_blk_n", "complex_float_s_o_blk_n"]},
			{"SubInstance" : "grp_real379_fu_1320", "SubBlockPort" : ["complex_float_M_real_blk_n"]},
			{"SubInstance" : "grp_imag380_fu_1332", "SubBlockPort" : ["complex_float_M_imag_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WienerDeblur_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143", "Parent" : "0", "Child" : ["3", "30", "57", "58", "59", "60", "61", "62", "63"],
		"CDFG" : "matrix_modulus",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6947329", "EstimateLatencyMax" : "6947329",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fft_kernel_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_20"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_20"}]},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_19"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_19"}]},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_16"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_16"}]},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_17"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_17"}]},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_9"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_9"}]},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_12"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_12"}]},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_13"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_13"}]},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_14"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_14"}]},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_15"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_15"}]},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_18"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_18"}]},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo"}]},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_96", "Port" : "pow_reduce_anonymo_21"},
					{"ID" : "30", "SubInstance" : "grp_pow_generic_double_s_fu_125", "Port" : "pow_reduce_anonymo_21"}]},
			{"Name" : "fft_kernel_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_imag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft_kernel_modu_M_r", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_r_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "StgValue_299_real_r_fu_154", "Port" : "fft_kernel_modu_M_r"}]},
			{"Name" : "fft_kernel_modu_M_i", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "StgValue_300_imag_fu_161", "Port" : "fft_kernel_modu_M_i"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "StgValue_299_real_r_fu_154", "SubBlockPort" : ["fft_kernel_modu_M_r_blk_n"]},
			{"SubInstance" : "StgValue_300_imag_fu_161", "SubBlockPort" : ["fft_kernel_modu_M_i_blk_n"]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "66", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_20_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_19_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_16_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_17_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_9_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_12_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_13_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_14_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_15_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_18_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.pow_reduce_anonymo_21_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_wdI_U64", "Parent" : "3"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_xdS_U65", "Parent" : "3"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_yd2_U66", "Parent" : "3"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_zec_U67", "Parent" : "3"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_Aem_U68", "Parent" : "3"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_Bew_U69", "Parent" : "3"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_CeG_U70", "Parent" : "3"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_DeQ_U71", "Parent" : "3"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_Ee0_U72", "Parent" : "3"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_Ffa_U73", "Parent" : "3"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_Gfk_U74", "Parent" : "3"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_Hfu_U75", "Parent" : "3"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mul_IfE_U76", "Parent" : "3"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_96.WienerDeblur_mac_JfO_U77", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125", "Parent" : "2", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "66", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_20_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_19_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_16_U", "Parent" : "30"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_17_U", "Parent" : "30"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_9_U", "Parent" : "30"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_12_U", "Parent" : "30"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_13_U", "Parent" : "30"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_14_U", "Parent" : "30"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_15_U", "Parent" : "30"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_18_U", "Parent" : "30"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_U", "Parent" : "30"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.pow_reduce_anonymo_21_U", "Parent" : "30"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_wdI_U64", "Parent" : "30"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_xdS_U65", "Parent" : "30"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_yd2_U66", "Parent" : "30"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_zec_U67", "Parent" : "30"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_Aem_U68", "Parent" : "30"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_Bew_U69", "Parent" : "30"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_CeG_U70", "Parent" : "30"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_DeQ_U71", "Parent" : "30"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_Ee0_U72", "Parent" : "30"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_Ffa_U73", "Parent" : "30"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_Gfk_U74", "Parent" : "30"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_Hfu_U75", "Parent" : "30"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mul_IfE_U76", "Parent" : "30"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.grp_pow_generic_double_s_fu_125.WienerDeblur_mac_JfO_U77", "Parent" : "30"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.StgValue_299_real_r_fu_154", "Parent" : "2",
		"CDFG" : "real_r",
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
			{"Name" : "p_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "fft_kernel_modu_M_r", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_r_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.StgValue_300_imag_fu_161", "Parent" : "2",
		"CDFG" : "imag",
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
			{"Name" : "fft_kernel_modu_M_i", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_i_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.WienerDeblur_fptreOg_U108", "Parent" : "2"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.WienerDeblur_fpexKfY_U109", "Parent" : "2"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.WienerDeblur_fpexKfY_U110", "Parent" : "2"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.WienerDeblur_daddLf8_U111", "Parent" : "2"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_modulus_fu_1143.WienerDeblur_dsqrMgi_U112", "Parent" : "2"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179", "Parent" : "0", "Child" : ["65", "74", "75", "76", "77"],
		"CDFG" : "fft_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4721", "EstimateLatencyMax" : "4721",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dummy_proc_middle_1394_fu_75"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dummy_proc_fe_1395_fu_85"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fft_config1_s_fu_96"}],
		"Port" : [
			{"Name" : "direction", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "direction_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_dummy_proc_fe_1395_fu_85", "Port" : "in_r"}]},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_dummy_proc_middle_1394_fu_75", "Port" : "out_r"}]},
			{"Name" : "xn1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_fft_config1_s_fu_96", "Port" : "xn"},
					{"ID" : "74", "SubInstance" : "grp_dummy_proc_fe_1395_fu_85", "Port" : "xn1"}]},
			{"Name" : "xk1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_fft_config1_s_fu_96", "Port" : "xk"},
					{"ID" : "65", "SubInstance" : "grp_dummy_proc_middle_1394_fu_75", "Port" : "xk1"}]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75", "Parent" : "64", "Child" : ["66", "67", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "dummy_proc_middle_1394",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3585", "EstimateLatencyMax" : "3585",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "st_in_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xk1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "xk1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_fsubbkb_U13", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_fsubbkb_U14", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_sitocud_U15", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_sitocud_U16", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_fcmpdEe_U17", "Parent" : "65"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_fcmpdEe_U18", "Parent" : "65"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_fcmpdEe_U19", "Parent" : "65"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_middle_1394_fu_75.WienerDeblur_fcmpdEe_U20", "Parent" : "65"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_dummy_proc_fe_1395_fu_85", "Parent" : "64",
		"CDFG" : "dummy_proc_fe_1395",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "257", "EstimateLatencyMax" : "257",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "direction", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xn1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "xn1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.grp_fft_config1_s_fu_96", "Parent" : "64",
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
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.xk1_fifo_U", "Parent" : "64"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_top_fu_1179.xn1_fifo_U", "Parent" : "64"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204", "Parent" : "0", "Child" : ["79"],
		"CDFG" : "matrix_div_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1966593", "EstimateLatencyMax" : "1966593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_operator_div_float_fu_68"}],
		"Port" : [
			{"Name" : "fft_kernel_modu2_M_s", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_operator_div_float_fu_68", "Port" : "p_x_M_real"}]},
			{"Name" : "fft_kernel_modu2_M_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_operator_div_float_fu_68", "Port" : "p_x_M_imag"}]},
			{"Name" : "G1_M_real", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "G1_M_real_o_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_operator_div_float_fu_68", "Port" : "p_y_M_real"}]},
			{"Name" : "G1_M_imag", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "G1_M_imag_o_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_operator_div_float_fu_68", "Port" : "p_y_M_imag"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68", "Parent" : "78", "Child" : ["80"],
		"CDFG" : "operator_div_float",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_operator_div_assign_float_fu_34"}],
		"Port" : [
			{"Name" : "p_x_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_x_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_x_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_x_M_imag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_y_M_real", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_operator_div_assign_float_fu_34", "Port" : "p_z_M_real"}]},
			{"Name" : "p_y_M_imag", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_operator_div_assign_float_fu_34", "Port" : "p_z_M_imag"}]}]},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34", "Parent" : "79", "Child" : ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91"],
		"CDFG" : "operator_div_assign_float",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "complex_float_M_real_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "complex_float_M_imag_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_z_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_z_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_z_M_imag_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_faddibs_U141", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_faddibs_U142", "Parent" : "80"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fsubbkb_U143", "Parent" : "80"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U144", "Parent" : "80"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U145", "Parent" : "80"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U146", "Parent" : "80"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U147", "Parent" : "80"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U148", "Parent" : "80"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U149", "Parent" : "80"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fdivNgs_U150", "Parent" : "80"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_1_fu_1204.grp_operator_div_float_fu_68.grp_operator_div_assign_float_fu_34.WienerDeblur_fdivNgs_U151", "Parent" : "80"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216", "Parent" : "0", "Child" : ["93"],
		"CDFG" : "matrix_div",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1966593", "EstimateLatencyMax" : "1966593",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_operator_div_float_fu_72"}],
		"Port" : [
			{"Name" : "G1_M_real", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_operator_div_float_fu_72", "Port" : "p_x_M_real"}]},
			{"Name" : "G1_M_imag", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_operator_div_float_fu_72", "Port" : "p_x_M_imag"}]},
			{"Name" : "fft_kernel_M_real", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_operator_div_float_fu_72", "Port" : "p_y_M_real"}]},
			{"Name" : "fft_kernel_M_imag", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_operator_div_float_fu_72", "Port" : "p_y_M_imag"}]},
			{"Name" : "G_M_real", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "G_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "G_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "G_M_imag_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72", "Parent" : "92", "Child" : ["94"],
		"CDFG" : "operator_div_float",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_operator_div_assign_float_fu_34"}],
		"Port" : [
			{"Name" : "p_x_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_x_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_x_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_x_M_imag_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_y_M_real", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_operator_div_assign_float_fu_34", "Port" : "p_z_M_real"}]},
			{"Name" : "p_y_M_imag", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_operator_div_assign_float_fu_34", "Port" : "p_z_M_imag"}]}]},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34", "Parent" : "93", "Child" : ["95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105"],
		"CDFG" : "operator_div_assign_float",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "complex_float_M_real_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "complex_float_M_imag_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_z_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_z_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_z_M_imag_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_faddibs_U141", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_faddibs_U142", "Parent" : "94"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fsubbkb_U143", "Parent" : "94"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U144", "Parent" : "94"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U145", "Parent" : "94"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U146", "Parent" : "94"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U147", "Parent" : "94"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U148", "Parent" : "94"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fmuljbC_U149", "Parent" : "94"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fdivNgs_U150", "Parent" : "94"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_matrix_div_fu_1216.grp_operator_div_float_fu_72.grp_operator_div_assign_float_fu_34.WienerDeblur_fdivNgs_U151", "Parent" : "94"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KernelMaker_fu_1232", "Parent" : "0", "Child" : ["107", "108", "109", "110", "111", "112"],
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
					{"ID" : "107", "SubInstance" : "StgValue_88_real379_fu_68", "Port" : "complex_float_M_real"}]},
			{"Name" : "kernel_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "kernel_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "StgValue_89_imag380_fu_75", "Port" : "complex_float_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "StgValue_88_real379_fu_68", "SubBlockPort" : ["complex_float_M_real_blk_n"]},
			{"SubInstance" : "StgValue_89_imag380_fu_75", "SubBlockPort" : ["complex_float_M_imag_blk_n"]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KernelMaker_fu_1232.StgValue_88_real379_fu_68", "Parent" : "106",
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
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KernelMaker_fu_1232.StgValue_89_imag380_fu_75", "Parent" : "106",
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
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KernelMaker_fu_1232.WienerDeblur_fptreOg_U32", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KernelMaker_fu_1232.WienerDeblur_sitofYi_U33", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KernelMaker_fu_1232.WienerDeblur_dexpg8j_U34", "Parent" : "106"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KernelMaker_fu_1232.WienerDeblur_mac_hbi_U35", "Parent" : "106"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240", "Parent" : "0", "Child" : ["114"],
		"CDFG" : "InnerProd_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "721407", "EstimateLatencyMax" : "721408",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fft_kernel_modu_M_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_r_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_operator_float_1_fu_93", "Port" : "fft_kernel_modu_M_r"}]},
			{"Name" : "fft_kernel_modu_M_i", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_i_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "114", "SubInstance" : "grp_operator_float_1_fu_93", "Port" : "fft_kernel_modu_M_i"}]},
			{"Name" : "fft_kernel_modu2_M_s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu2_M_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft_kernel_modu2_M_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu2_M_1_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_float_1_fu_93", "SubBlockPort" : ["fft_kernel_modu_M_r_blk_n", "fft_kernel_modu_M_i_blk_n"]}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93", "Parent" : "113", "Child" : ["115"],
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
					{"ID" : "115", "SubInstance" : "grp_operator_mul_assign_float_fu_30", "Port" : "p_z_M_real"}]},
			{"Name" : "fft_kernel_modu_M_i", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu_M_i_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_operator_mul_assign_float_fu_30", "Port" : "p_z_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_mul_assign_float_fu_30", "SubBlockPort" : ["p_z_M_real_blk_n", "p_z_M_imag_blk_n"]}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93.grp_operator_mul_assign_float_fu_30", "Parent" : "114", "Child" : ["116", "117", "118", "119", "120", "121"],
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
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93.grp_operator_mul_assign_float_fu_30.WienerDeblur_fsubbkb_U120", "Parent" : "115"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93.grp_operator_mul_assign_float_fu_30.WienerDeblur_faddibs_U121", "Parent" : "115"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U122", "Parent" : "115"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U123", "Parent" : "115"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U124", "Parent" : "115"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd_1_fu_1240.grp_operator_float_1_fu_93.grp_operator_mul_assign_float_fu_30.WienerDeblur_fmuljbC_U125", "Parent" : "115"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252", "Parent" : "0", "Child" : ["123"],
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
					{"ID" : "123", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "gauss_blur_M_real"}]},
			{"Name" : "gauss_blur_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gauss_blur_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "gauss_blur_M_imag"}]},
			{"Name" : "G_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "G_M_real_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "G_M_real"}]},
			{"Name" : "G_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "G_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_operator_mul_float_fu_97", "Port" : "G_M_imag"}]},
			{"Name" : "xk1_M_real", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "xk1_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xk1_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "xk1_M_imag_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_mul_float_fu_97", "SubBlockPort" : ["gauss_blur_M_real_blk_n", "gauss_blur_M_imag_blk_n", "G_M_real_blk_n", "G_M_imag_blk_n"]}]},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97", "Parent" : "122", "Child" : ["124"],
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
					{"ID" : "124", "SubInstance" : "grp_operator_mul_assign_float_fu_34", "Port" : "p_z_M_real"}]},
			{"Name" : "G_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "G_M_imag_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_operator_mul_assign_float_fu_34", "Port" : "p_z_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_mul_assign_float_fu_34", "SubBlockPort" : ["p_z_M_real_blk_n", "p_z_M_imag_blk_n"]}]},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34", "Parent" : "123", "Child" : ["125", "126", "127", "128", "129", "130"],
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
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fsubbkb_U120", "Parent" : "124"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_faddibs_U121", "Parent" : "124"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U122", "Parent" : "124"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U123", "Parent" : "124"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U124", "Parent" : "124"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd381_fu_1252.grp_operator_mul_float_fu_97.grp_operator_mul_assign_float_fu_34.WienerDeblur_fmuljbC_U125", "Parent" : "124"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268", "Parent" : "0", "Child" : ["132"],
		"CDFG" : "InnerProd382",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65546", "EstimateLatencyMax" : "65547",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "xk1_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "xk1_M_real_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_operator_float_397_fu_96", "Port" : "xk1_M_real"}]},
			{"Name" : "xk1_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "xk1_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_operator_float_397_fu_96", "Port" : "xk1_M_imag"}]},
			{"Name" : "fft_kernel_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_real_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_operator_float_397_fu_96", "Port" : "fft_kernel_M_real"}]},
			{"Name" : "fft_kernel_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_operator_float_397_fu_96", "Port" : "fft_kernel_M_imag"}]},
			{"Name" : "gauss_blur_M_real", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gauss_blur_M_real_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gauss_blur_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gauss_blur_M_imag_blk_n", "Type" : "RtlSignal"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_float_397_fu_96", "SubBlockPort" : ["xk1_M_real_blk_n", "xk1_M_imag_blk_n", "fft_kernel_M_real_blk_n", "fft_kernel_M_imag_blk_n"]}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96", "Parent" : "131", "Child" : ["133"],
		"CDFG" : "operator_float_397",
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
			{"Name" : "xk1_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "xk1_M_real_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "xk1_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "xk1_M_imag_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "fft_kernel_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_real_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_operator_float_398_fu_34", "Port" : "fft_kernel_M_real"}]},
			{"Name" : "fft_kernel_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_imag_blk_n", "Type" : "RtlPort"}],
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_operator_float_398_fu_34", "Port" : "fft_kernel_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_operator_float_398_fu_34", "SubBlockPort" : ["fft_kernel_M_real_blk_n", "fft_kernel_M_imag_blk_n"]}]},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96.grp_operator_float_398_fu_34", "Parent" : "132", "Child" : ["134", "135", "136", "137", "138", "139"],
		"CDFG" : "operator_float_398",
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
			{"Name" : "fft_kernel_M_real", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_real_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "fft_kernel_M_imag", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_M_imag_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96.grp_operator_float_398_fu_34.WienerDeblur_fsubbkb_U42", "Parent" : "133"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96.grp_operator_float_398_fu_34.WienerDeblur_faddibs_U43", "Parent" : "133"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96.grp_operator_float_398_fu_34.WienerDeblur_fmuljbC_U44", "Parent" : "133"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96.grp_operator_float_398_fu_34.WienerDeblur_fmuljbC_U45", "Parent" : "133"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96.grp_operator_float_398_fu_34.WienerDeblur_fmuljbC_U46", "Parent" : "133"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_InnerProd382_fu_1268.grp_operator_float_397_fu_96.grp_operator_float_398_fu_34.WienerDeblur_fmuljbC_U47", "Parent" : "133"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matrix_plus_SNR_fu_1284", "Parent" : "0", "Child" : ["141", "142", "143"],
		"CDFG" : "matrix_plus_SNR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "393729", "EstimateLatencyMax" : "393729",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fft_kernel_modu2_M_s", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu2_M_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "G1_M_real", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "G1_M_real_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "142", "SubInstance" : "StgValue_33_real379_fu_77", "Port" : "complex_float_M_real"}]},
			{"Name" : "fft_kernel_modu2_M_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft_kernel_modu2_M_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "G1_M_imag", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "G1_M_imag_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "StgValue_28_imag380_fu_70", "Port" : "complex_float_M_imag"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "StgValue_28_imag380_fu_70", "SubBlockPort" : ["complex_float_M_imag_blk_n"]},
			{"SubInstance" : "StgValue_33_real379_fu_77", "SubBlockPort" : ["complex_float_M_real_blk_n"]}]},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_plus_SNR_fu_1284.StgValue_28_imag380_fu_70", "Parent" : "140",
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
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_plus_SNR_fu_1284.StgValue_33_real379_fu_77", "Parent" : "140",
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
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matrix_plus_SNR_fu_1284.WienerDeblur_faddibs_U136", "Parent" : "140"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_real_1_fu_1296", "Parent" : "0",
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
			{"Name" : "p_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imag_1_fu_1308", "Parent" : "0",
		"CDFG" : "imag_1",
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
			{"Name" : "p_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_real379_fu_1320", "Parent" : "0",
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
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_imag380_fu_1332", "Parent" : "0",
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
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WienerDeblur_fmuljbC_U181", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.WienerDeblur_uitoOgC_U182", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.G_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.G_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_kernel_modu_M_i_fifo_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_kernel_modu_M_r_fifo_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gauss_blur_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gauss_blur_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.G1_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.G1_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_kernel_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_kernel_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_kernel_modu2_M_1_fifo_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_kernel_modu2_M_s_fifo_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in1_fifo_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in2_fifo_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in3_fifo_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in4_fifo_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in5_fifo_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in6_fifo_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.middle_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.middle_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.middle2_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.middle2_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out1_fifo_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out2_fifo_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out3_fifo_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out4_fifo_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out5_fifo_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out6_fifo_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xk1_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xk1_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xk2_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xk2_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xn1_M_imag_fifo_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xn1_M_real_fifo_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.src_bw_data_stream_0_fifo_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_data_stream_0_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	WienerDeblur {
		INPUT_data_V {Type I LastRead 5 FirstWrite -1}
		INPUT_user_V {Type I LastRead 5 FirstWrite -1}
		INPUT_last_V {Type I LastRead 5 FirstWrite -1}
		OUTPUT_data_V {Type O LastRead -1 FirstWrite 32}
		OUTPUT_user_V {Type O LastRead -1 FirstWrite 32}
		OUTPUT_last_V {Type O LastRead -1 FirstWrite 32}
		rows_V {Type I LastRead 0 FirstWrite -1}
		cols_V {Type I LastRead 0 FirstWrite -1}
		guard_variable_for_W {Type IO LastRead -1 FirstWrite -1}
		kernel_M_real {Type IO LastRead -1 FirstWrite -1}
		kernel_M_imag {Type IO LastRead -1 FirstWrite -1}
		xn1_M_real {Type IO LastRead -1 FirstWrite -1}
		xn1_M_imag {Type IO LastRead -1 FirstWrite -1}
		in1 {Type IO LastRead -1 FirstWrite -1}
		xn1 {Type IO LastRead -1 FirstWrite -1}
		xk1 {Type IO LastRead -1 FirstWrite -1}
		out1 {Type IO LastRead -1 FirstWrite -1}
		middle_M_real {Type IO LastRead -1 FirstWrite -1}
		middle_M_imag {Type IO LastRead -1 FirstWrite -1}
		in2 {Type IO LastRead -1 FirstWrite -1}
		out2 {Type IO LastRead -1 FirstWrite -1}
		xk1_M_real {Type IO LastRead -1 FirstWrite -1}
		xk1_M_imag {Type IO LastRead -1 FirstWrite -1}
		in3 {Type IO LastRead -1 FirstWrite -1}
		out3 {Type IO LastRead -1 FirstWrite -1}
		in4 {Type IO LastRead -1 FirstWrite -1}
		out4 {Type IO LastRead -1 FirstWrite -1}
		fft_kernel_M_real {Type IO LastRead -1 FirstWrite -1}
		fft_kernel_M_imag {Type IO LastRead -1 FirstWrite -1}
		gauss_blur_M_real {Type IO LastRead -1 FirstWrite -1}
		gauss_blur_M_imag {Type IO LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}
		fft_kernel_modu_M_r {Type IO LastRead -1 FirstWrite -1}
		fft_kernel_modu_M_i {Type IO LastRead -1 FirstWrite -1}
		fft_kernel_modu2_M_s {Type IO LastRead -1 FirstWrite -1}
		fft_kernel_modu2_M_1 {Type IO LastRead -1 FirstWrite -1}
		G1_M_real {Type IO LastRead -1 FirstWrite -1}
		G1_M_imag {Type IO LastRead -1 FirstWrite -1}
		G_M_real {Type IO LastRead -1 FirstWrite -1}
		G_M_imag {Type IO LastRead -1 FirstWrite -1}
		in5 {Type IO LastRead -1 FirstWrite -1}
		out5 {Type IO LastRead -1 FirstWrite -1}
		middle2_M_real {Type IO LastRead -1 FirstWrite -1}
		middle2_M_imag {Type IO LastRead -1 FirstWrite -1}
		in6 {Type IO LastRead -1 FirstWrite -1}
		out6 {Type IO LastRead -1 FirstWrite -1}
		xk2_M_real {Type IO LastRead -1 FirstWrite -1}
		xk2_M_imag {Type IO LastRead -1 FirstWrite -1}}
	matrix_modulus {
		fft_kernel_M_real {Type I LastRead 2 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}
		fft_kernel_M_imag {Type I LastRead 2 FirstWrite -1}
		fft_kernel_modu_M_r {Type O LastRead -1 FirstWrite 0}
		fft_kernel_modu_M_i {Type O LastRead -1 FirstWrite 0}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}}
	real_r {
		p_val {Type I LastRead 0 FirstWrite -1}
		fft_kernel_modu_M_r {Type O LastRead -1 FirstWrite 0}}
	imag {
		fft_kernel_modu_M_i {Type O LastRead -1 FirstWrite 0}}
	fft_top {
		direction {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 14}
		xn1 {Type IO LastRead -1 FirstWrite -1}
		xk1 {Type IO LastRead -1 FirstWrite -1}}
	dummy_proc_middle_1394 {
		st_in_data_V_read {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 14}
		xk1 {Type I LastRead 1 FirstWrite -1}}
	dummy_proc_fe_1395 {
		direction {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 1 FirstWrite -1}
		xn1 {Type O LastRead -1 FirstWrite 1}}
	fft_config1_s {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	matrix_div_1 {
		fft_kernel_modu2_M_s {Type I LastRead 0 FirstWrite -1}
		fft_kernel_modu2_M_1 {Type I LastRead 0 FirstWrite -1}
		G1_M_real {Type IO LastRead 0 FirstWrite -1}
		G1_M_imag {Type IO LastRead 0 FirstWrite -1}}
	operator_div_float {
		p_x_M_real {Type I LastRead 0 FirstWrite -1}
		p_x_M_imag {Type I LastRead 0 FirstWrite -1}
		p_y_M_real {Type I LastRead 0 FirstWrite -1}
		p_y_M_imag {Type I LastRead 0 FirstWrite -1}}
	operator_div_assign_float {
		complex_float_M_real_read {Type I LastRead 1 FirstWrite -1}
		complex_float_M_imag_read {Type I LastRead 1 FirstWrite -1}
		p_z_M_real {Type I LastRead 0 FirstWrite -1}
		p_z_M_imag {Type I LastRead 0 FirstWrite -1}}
	matrix_div {
		G1_M_real {Type I LastRead 0 FirstWrite -1}
		G1_M_imag {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_real {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_imag {Type I LastRead 0 FirstWrite -1}
		G_M_real {Type O LastRead -1 FirstWrite 4}
		G_M_imag {Type O LastRead -1 FirstWrite 4}}
	operator_div_float {
		p_x_M_real {Type I LastRead 0 FirstWrite -1}
		p_x_M_imag {Type I LastRead 0 FirstWrite -1}
		p_y_M_real {Type I LastRead 0 FirstWrite -1}
		p_y_M_imag {Type I LastRead 0 FirstWrite -1}}
	operator_div_assign_float {
		complex_float_M_real_read {Type I LastRead 1 FirstWrite -1}
		complex_float_M_imag_read {Type I LastRead 1 FirstWrite -1}
		p_z_M_real {Type I LastRead 0 FirstWrite -1}
		p_z_M_imag {Type I LastRead 0 FirstWrite -1}}
	KernelMaker {
		kernel_M_real {Type O LastRead -1 FirstWrite 0}
		kernel_M_imag {Type O LastRead -1 FirstWrite 0}}
	real379 {
		complex_float_M_real {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	imag380 {
		complex_float_M_imag {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	InnerProd_1 {
		fft_kernel_modu_M_r {Type I LastRead 0 FirstWrite -1}
		fft_kernel_modu_M_i {Type I LastRead 0 FirstWrite -1}
		fft_kernel_modu2_M_s {Type O LastRead -1 FirstWrite 13}
		fft_kernel_modu2_M_1 {Type O LastRead -1 FirstWrite 13}}
	operator_float_1 {
		fft_kernel_modu_M_r {Type I LastRead 0 FirstWrite -1}
		fft_kernel_modu_M_i {Type I LastRead 0 FirstWrite -1}}
	operator_mul_assign_float {
		complex_float_M_real_read {Type I LastRead 0 FirstWrite -1}
		complex_float_M_imag_read {Type I LastRead 0 FirstWrite -1}
		p_z_M_real {Type I LastRead 0 FirstWrite -1}
		p_z_M_imag {Type I LastRead 0 FirstWrite -1}}
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
		p_z_M_imag {Type I LastRead 0 FirstWrite -1}}
	InnerProd382 {
		xk1_M_real {Type I LastRead 0 FirstWrite -1}
		xk1_M_imag {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_real {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_imag {Type I LastRead 0 FirstWrite -1}
		gauss_blur_M_real {Type O LastRead -1 FirstWrite 12}
		gauss_blur_M_imag {Type O LastRead -1 FirstWrite 12}}
	operator_float_397 {
		xk1_M_real {Type I LastRead 0 FirstWrite -1}
		xk1_M_imag {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_real {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_imag {Type I LastRead 0 FirstWrite -1}}
	operator_float_398 {
		complex_float_M_real_read {Type I LastRead 0 FirstWrite -1}
		complex_float_M_imag_read {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_real {Type I LastRead 0 FirstWrite -1}
		fft_kernel_M_imag {Type I LastRead 0 FirstWrite -1}}
	matrix_plus_SNR {
		fft_kernel_modu2_M_s {Type I LastRead 2 FirstWrite -1}
		G1_M_real {Type O LastRead -1 FirstWrite 0}
		fft_kernel_modu2_M_1 {Type I LastRead 2 FirstWrite -1}
		G1_M_imag {Type O LastRead -1 FirstWrite 0}}
	imag380 {
		complex_float_M_imag {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	real379 {
		complex_float_M_real {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	real_1 {
		complex_float_s {Type IO LastRead 0 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	imag_1 {
		complex_float_s {Type IO LastRead 0 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	real379 {
		complex_float_M_real {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}
	imag380 {
		complex_float_M_imag {Type O LastRead -1 FirstWrite 0}
		p_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	INPUT_data_V { axis {  { in_stream_TDATA in_data 0 32 } } }
	INPUT_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	INPUT_last_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TLAST in_data 0 1 } } }
	OUTPUT_data_V { axis {  { out_stream_TDATA out_data 1 32 }  { out_stream_TREADY out_acc 0 1 } } }
	OUTPUT_user_V { axis {  { out_stream_TUSER out_data 1 1 } } }
	OUTPUT_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
