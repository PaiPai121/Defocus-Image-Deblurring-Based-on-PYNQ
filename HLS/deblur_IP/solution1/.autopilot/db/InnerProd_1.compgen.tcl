# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name fft_kernel_modu_M_r \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fft_kernel_modu_M_r \
    op interface \
    ports { fft_kernel_modu_M_r_dout { I 32 vector } fft_kernel_modu_M_r_empty_n { I 1 bit } fft_kernel_modu_M_r_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name fft_kernel_modu_M_i \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fft_kernel_modu_M_i \
    op interface \
    ports { fft_kernel_modu_M_i_dout { I 32 vector } fft_kernel_modu_M_i_empty_n { I 1 bit } fft_kernel_modu_M_i_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name fft_kernel_modu2_M_s \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fft_kernel_modu2_M_s \
    op interface \
    ports { fft_kernel_modu2_M_s_din { O 32 vector } fft_kernel_modu2_M_s_full_n { I 1 bit } fft_kernel_modu2_M_s_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name fft_kernel_modu2_M_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fft_kernel_modu2_M_1 \
    op interface \
    ports { fft_kernel_modu2_M_1_din { O 32 vector } fft_kernel_modu2_M_1_full_n { I 1 bit } fft_kernel_modu2_M_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


