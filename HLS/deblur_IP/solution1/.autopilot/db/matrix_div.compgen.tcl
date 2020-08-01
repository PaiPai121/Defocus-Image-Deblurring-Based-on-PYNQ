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
    id 165 \
    name G1_M_real \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G1_M_real \
    op interface \
    ports { G1_M_real_dout { I 32 vector } G1_M_real_empty_n { I 1 bit } G1_M_real_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name G1_M_imag \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_G1_M_imag \
    op interface \
    ports { G1_M_imag_dout { I 32 vector } G1_M_imag_empty_n { I 1 bit } G1_M_imag_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name fft_kernel_M_real \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fft_kernel_M_real \
    op interface \
    ports { fft_kernel_M_real_dout { I 32 vector } fft_kernel_M_real_empty_n { I 1 bit } fft_kernel_M_real_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name fft_kernel_M_imag \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fft_kernel_M_imag \
    op interface \
    ports { fft_kernel_M_imag_dout { I 32 vector } fft_kernel_M_imag_empty_n { I 1 bit } fft_kernel_M_imag_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name G_M_real \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_M_real \
    op interface \
    ports { G_M_real_din { O 32 vector } G_M_real_full_n { I 1 bit } G_M_real_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name G_M_imag \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_G_M_imag \
    op interface \
    ports { G_M_imag_din { O 32 vector } G_M_imag_full_n { I 1 bit } G_M_imag_write { O 1 bit } } \
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


