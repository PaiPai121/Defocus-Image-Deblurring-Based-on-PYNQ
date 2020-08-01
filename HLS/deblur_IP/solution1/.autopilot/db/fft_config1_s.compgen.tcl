# This script segment is generated automatically by AutoPilot

# === IP Block fft<config1> ===
set id 12
set name fft_config1_s
set cppname "fft<config1>"
set corename Vivado_FFT
set op ipcall
set stage_num 0
set registered_input 0
set ipPortList { \
    {\
        name ap_clk \
        width 1 \
        signed 1 \
        dir IN \
        conntype clock \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_rst \
        width 1 \
        signed 1 \
        dir IN \
        conntype reset \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_start \
        width 1 \
        signed 1 \
        dir IN \
        conntype start \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_ce \
        width 1 \
        signed 1 \
        dir IN \
        conntype ce \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_done \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_idle \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name ap_ready \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name xn_dout \
        width 64 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC_VECTOR \
        conn "" \
    }\
    {\
        name xn_empty_n \
        width 1 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name xn_read \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name xk_din \
        width 64 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC_VECTOR \
        conn "" \
    }\
    {\
        name xk_full_n \
        width 1 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name xk_write \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name status_data_V_din \
        width 8 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC_VECTOR \
        conn "" \
    }\
    {\
        name status_data_V_full_n \
        width 1 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name status_data_V_write \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name config_ch_data_V_dout \
        width 16 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC_VECTOR \
        conn "" \
    }\
    {\
        name config_ch_data_V_empty_n \
        width 1 \
        signed 1 \
        dir IN \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
    {\
        name config_ch_data_V_read \
        width 1 \
        signed 1 \
        dir OUT \
        conntype port \
        type STD_LOGIC \
        conn "" \
    }\
}

set ipParamList { \
    aclken {true} \
    aresetn {true} \
    butterfly_type {0} \
    channels {1} \
    complex_mult_type {1} \
    cyclic_prefix_insertion {0} \
    data_format {floating_point} \
    implementation_options {2} \
    input_width {32} \
    memory_options_data {0} \
    memory_options_hybrid {0} \
    memory_options_phase_factors {0} \
    memory_options_reorder {0} \
    number_of_stages_using_block_ram_for_data_and_phase_factors {1} \
    output_ordering {1} \
    output_width {32} \
    ovflo {1} \
    phase_factor_width {24} \
    rounding_modes {0} \
    run_time_configurable_transform_length {0} \
    scaling_options {0} \
    target_clock_frequency {100} \
    throttle_scheme {nonrealtime} \
    transform_length {256} \
    xk_index {0} \
}

if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::IP::FFT::gen] == "::IP::FFT::gen"} {
eval "::IP::FFT::gen { \
    view sim \
    id ${id} \
    name ${name} \
    reset_level 1 \
    sync_rst true \
    corename ${corename} \
    op ${op} \
    stage_num ${stage_num} \
    registered_input ${registered_input} \
    ip_param_list \{${ipParamList}\} \
    ip_port_list \{${ipPortList}\} \
}"
} else {
puts "@W \[IMPL-117\] Cannot find ::IP::FFT::gen, check your lib."
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


if {${::AESL::PGuard_autocg_gen}} {
if {[info proc ::IP::FFT::gen] == "::IP::FFT::gen"} {
eval "::IP::FFT::gen { \
    view impl \
    id ${id} \
    name ${name} \
    reset_level 1 \
    sync_rst true \
    corename ${corename} \
    op ${op} \
    stage_num ${stage_num} \
    registered_input ${registered_input} \
    ip_param_list \{${ipParamList}\} \
    ip_port_list \{${ipPortList}\} \
}"
} else {
puts "@W \[IMPL-118\] Cannot find ::IP::FFT::gen, check your lib."
}
}


# === end of IP Block fft<config1> ===
