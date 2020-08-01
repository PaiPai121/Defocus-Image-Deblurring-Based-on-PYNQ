# This script segment is generated automatically by AutoPilot

set id 64
set name WienerDeblur_mul_wdI
set corename simcore_mul
set op mul
set stage_num 2
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 54
set in0_signed 1
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 54
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 65
set name WienerDeblur_mul_xdS
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 71
set in0_signed 0
set in1_width 4
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 75
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 66
set name WienerDeblur_mul_yd2
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 73
set in0_signed 0
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 79
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 67
set name WienerDeblur_mul_zec
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 83
set in0_signed 0
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 89
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 68
set name WienerDeblur_mul_Aem
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 92
set in0_signed 0
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 98
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 69
set name WienerDeblur_mul_Bew
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 87
set in0_signed 0
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 93
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 70
set name WienerDeblur_mul_CeG
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 82
set in0_signed 0
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 88
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 71
set name WienerDeblur_mul_DeQ
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 77
set in0_signed 0
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 83
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 72
set name WienerDeblur_mul_Ee0
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 80
set in0_signed 0
set in1_width 12
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 90
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 73
set name WienerDeblur_mul_Ffa
set corename simcore_mul
set op mul
set stage_num 5
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 72
set in0_signed 0
set in1_width 13
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 83
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 74
set name WienerDeblur_mul_Gfk
set corename simcore_mul
set op mul
set stage_num 2
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 43
set in0_signed 0
set in1_width 36
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 79
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 75
set name WienerDeblur_mul_Hfu
set corename simcore_mul
set op mul
set stage_num 2
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 49
set in0_signed 0
set in1_width 44
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 93
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 76
set name WienerDeblur_mul_IfE
set corename simcore_mul
set op mul
set stage_num 2
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 50
set in0_signed 0
set in1_width 50
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 100
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 77
set name WienerDeblur_mac_JfO
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 16
set in0_signed 0
set in1_width 16
set in1_signed 1
set in2_width 19
set in2_signed 1
set out_width 31
set exp i0*i1+i2
set arg_lists {i0 {16 0 +} i1 {16 1 +} m {31 1 +} i2 {19 1 +} p {31 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 92
set hasByteEnable 0
set MemName pow_generic_doublkbM
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 6
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "100000" "100000" "100000" "011111" "011111" "011110" "011110" "011101" "011101" "011101" "011100" "011100" "011011" "011011" "011011" "011010" "011010" "011010" "011001" "011001" "011001" "011001" "011000" "011000" "011000" "011000" "010111" "010111" "010111" "010111" "010110" "010110" "101011" "101011" "101010" "101010" "101001" "101001" "101001" "101000" "101000" "101000" "100111" "100111" "100110" "100110" "100110" "100101" "100101" "100101" "100100" "100100" "100100" "100100" "100011" "100011" "100011" "100010" "100010" "100010" "100010" "100001" "100001" "100001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 93
set hasByteEnable 0
set MemName pow_generic_doubllbW
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 109
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "1111111101111100000111101111110100011001001011101110001101001111110011101110101001010001100111100010101010000" "1111111101111100000111101111110100011001001011101110001101001111110011101110101001010001100111100010101010000" "1111111101111100000111101111110100011001001011101110001101001111110011101110101001010001100111100010101010000" "0000011110011100110011011100001000001100110100010000010110000111110110101000100010001100100010001001011011001" "0000011110011100110011011100001000001100110100010000010110000111110110101000100010001100100010001001011011001" "0001000000000001101101111011001010110111011010001110100111011000011100101110011111101101100100110010110110111" "0001000000000001101101111011001010110111011010001110100111011000011100101110011111101101100100110010110110111" "0001100010101111011111010101101001110010011110000110101111111101111011000100100011110101100010101111011110101" "0001100010101111011111010101101001110010011110000110101111111101111011000100100011110101100010101111011110101" "0001100010101111011111010101101001110010011110000110101111111101111011000100100011110101100010101111011110101" "0010000110101011001111000000000101101000111101111101101100001100001101100000000011010101100101110001000001000" "0010000110101011001111000000000101101000111101111101101100001100001101100000000011010101100101110001000001000" "0010101011111010100111111101001111000001101010100100011101000110110101000001000000101011100101110010111010010" "0010101011111010100111111101001111000001101010100100011101000110110101000001000000101011100101110010111010010" "0010101011111010100111111101001111000001101010100100011101000110110101000001000000101011100101110010111010010" "0011010010100011111110010111011000101110111000101010101000101110001001101011111101000000111010011011101010100" "0011010010100011111110010111011000101110111000101010101000101110001001101011111101000000111010011011101010100" "0011010010100011111110010111011000101110111000101010101000101110001001101011111101000000111010011011101010100" "0011111010101110010101111101011010000000100101011101011001001011000000010110110110001001011010100010111110010" "0011111010101110010101111101011010000000100101011101011001001011000000010110110110001001011010100010111110010" "0011111010101110010101111101011010000000100101011101011001001011000000010110110110001001011010100010111110010" "0011111010101110010101111101011010000000100101011101011001001011000000010110110110001001011010100010111110010" "0100100100100001101001110100000111101100100111010010110100110000101111101001100000101011011110010010110100110" "0100100100100001101001110100000111101100100111010010110100110000101111101001100000101011011110010010110100110" "0100100100100001101001110100000111101100100111010010110100110000101111101001100000101011011110010010110100110" "0100100100100001101001110100000111101100100111010010110100110000101111101001100000101011011110010010110100110" "0101010000000110110101110001100111111011101111100100001010001000000011111001110010110101010010101101111010111" "0101010000000110110101110001100111111011101111100100001010001000000011111001110010110101010010101101111010111" "0101010000000110110101110001100111111011101111100100001010001000000011111001110010110101010010101101111010111" "0101010000000110110101110001100111111011101111100100001010001000000011111001110010110101010010101101111010111" "0101111101101000000001111110110001111001100000110101001100000111011010101110000100100110011010010011110010101" "0101111101101000000001111110110001111001100000110101001100000111011010101110000100100110011010010011110010101" "1011001111011000100101000001000110010100101110100010000011011111000110111100010111100111100010100000101000011" "1011001111011000100101000001000110010100101110100010000011011111000110111100010111100111100010100000101000011" "1011100111011110101011000100111001101010100101101010101101000001010110111100101011111011110110100000111011111" "1011100111011110101011000100111001101010100101101010101101000001010110111100101011111011110110100000111011111" "1100000000001001111011100010001001011100101100101000111000110101001001000101110101111001001011110000000011100" "1100000000001001111011100010001001011100101100101000111000110101001001000101110101111001001011110000000011100" "1100000000001001111011100010001001011100101100101000111000110101001001000101110101111001001011110000000011100" "1100011001011100001011110110110111100011111110101001111111110111100000110011101000010011101110000010101100010" "1100011001011100001011110110110111100011111110101001111111110111100000110011101000010011101110000010101100010" "1100011001011100001011110110110111100011111110101001111111110111100000110011101000010011101110000010101100010" "1100110011010111011010011100001100110000100000010111101001100011010011001000100101100111001011001011100101011" "1100110011010111011010011100001100110000100000010111101001100011010011001000100101100111001011001011100101011" "1101001101111101101111100001101111001010000001110011101110111110111001110010011000111101100011111110100000111" "1101001101111101101111100001101111001010000001110011101110111110111001110010011000111101100011111110100000111" "1101001101111101101111100001101111001010000001110011101110111110111001110010011000111101100011111110100000111" "1101101001010001011110010000110011011001010001001001110010110111110000110011000101101111100110100011110010010" "1101101001010001011110010000110011011001010001001001110010110111110000110011000101101111100110100011110010010" "1101101001010001011110010000110011011001010001001001110010110111110000110011000101101111100110100011110010010" "1110000101010101000101111000111011101110001110111111110101100101111001000110001001010001101111000010101111101" "1110000101010101000101111000111011101110001110111111110101100101111001000110001001010001101111000010101111101" "1110000101010101000101111000111011101110001110111111110101100101111001000110001001010001101111000010101111101" "1110000101010101000101111000111011101110001110111111110101100101111001000110001001010001101111000010101111101" "1110100010001011010011000111001000110011110000111001011110110011111010100101000010010111101100010001000011010" "1110100010001011010011000111001000110011110000111001011110110011111010100101000010010111101100010001000011010" "1110100010001011010011000111001000110011110000111001011110110011111010100101000010010111101100010001000011010" "1110111111110111000001101001110100010000011111011001000000011111000100001000010110011000111001101011010011101" "1110111111110111000001101001110100010000011111011001000000011111000100001000010110011000111001101011010011101" "1110111111110111000001101001110100010000011111011001000000011111000100001000010110011000111001101011010011101" "1110111111110111000001101001110100010000011111011001000000011111000100001000010110011000111001101011010011101" "1111011110011011011110000011100101111011001000100010001100111100100100001010101101001100101011000011101101100" "1111011110011011011110000011100101111011001000100010001100111100100100001010101101001100101011000011101101100" "1111011110011011011110000011100101111011001000100010001100111100100100001010101101001100101011000011101101100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 94
set hasByteEnable 0
set MemName pow_generic_doublmb6
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 105
set AddrRange 16
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" "000100000000000000000001010101010101010110001000100010001001000110101101000111001001100011001001111010011" "001000000001000000010010101111101100001100101111100011011010110000110100010000001001110111101111101000001" "001100000011000001010100100111010011101100101010000110001011101110000001001000111110111011110101110100101" "010000000110000011100111101100111111100110000010010001100101111001011010111010000000000101111001111101001" "010100001010000111101101001010100001001101111100110110001011011101101100001100000011000101000101110100000" "011000001111001110000110100011000000111011110011100100011000010100111100100101100110101111010111010001110" "011100010101010111010101110011011000000111010101001101100001100100110000011110111000001100001000111010111" "011110011000110101001100010110101011110101101111111111111101000000100110110110010011100011101000000010110" "100010100000100011101100111110011010010011100110010111010001111011100011110001110100111111111010101001111" "100110101001010110011010001001101101001110000110001011100111010100101010111100010101010100101000110000001" "101010110011001101110111010010111101100111100011100001100000001001111011111100111011100000010001011100111" "101110111110001010101000010000010001000010011110111110111010011001010001101100000100001000010000101001000" "110011001010001101010001010011110110100001011110010100110100011011101000011110110000011101011110000001110" "110111010111010110010111001100100100001101001100000110100110111111010011110000010100001011000100001110101" "111011100101100110011111000110010101100001011010100101011101010100001010100000110000000100110101111010010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 95
set hasByteEnable 0
set MemName pow_generic_doublncg
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 102
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" "000001000000000000000000000000000001010101010101010101010101011000100010001000100010001000101011010001" "000010000000000000100000000000010010101010110100101010110000110001001000000011110001011000000010110100" "000011000000000001100000000001010100000001001110000001001110001010110111110010111101100111100001001110" "000100000000000011000000000011100101011010000001011011111001101011101101100000100000000000101101000011" "000101000000000101000000000111100110110111011111000001101111100101111011111000110010000010010101101000" "000110000000000111100000001101111000011100100110111110111100100011011100111111001110101010010000100111" "000111000000001010100000010110111010001101001001100110011101110100110011101010101111011010101100100000" "001000000000001110000000100011001100001101100111010011100001100011111101110100110111111000101100001101" "001001000000010010000000110011001110100011010000101011000111001010110111100111000010101001000011011111" "001010000000010110100001000111100001010100000110011101011111101101101111110001000011011000110001000100" "001011000000011011100001100000100100100110111001100111101110011001001101010100010010100101011011111111" "001100000000100001000001111110111000100011001011010101001001000100000110101110110111100010000011100000" "001101000000100111000010100010111101010001001101000000111000110101001010110010000110011011111110100010" "001110000000101101100011001101010010111010000000010111011010101100011011001111101000101011110110110010" "001111000000110100100011111110011001100111010111011000000000010000011001101000100110000101111101101101" "010000000000111100000100110110110001100011110100010110010000011111000110001010000110100101001110001000" "010001000001000100000101110110111010111010101001111011101000100010110001000010100100010100000100000100" "010010000001001100100110111111010101110111111011001000111100101010011110011011000110111110001101111110" "010011000001010101101000010000100010101000011011010111111001000110011101000000100001011110010110100001" "010100000001011111001001101011000001011001101110011100100011001000001111100111001100000010100100011100" "010101000001101001001011001111010010011010001000100110111010000110101001110101010101001010101111000111" "010110000001110011101100111101110101111000101110100100011000100101011111111111000100101011101001101100" "010111000001111110101110110111001100000101010101100001010101100001001010011111101100101010001101001101" "011000000010001010010000111011110101010000100011001010100101011101111100111011100100101001110001110001" "011001000010010110010011001100010001101011101101101110111011111011010000110110001100010001010010110001" "011010000010100010110101101001000001101000111100000000101100101010100100100111110010110010100111000001" "011011000010101111111000010010100101011011000101010111001101001010001110011110000010001000000101111111" "011100000010111101011011001001011101010101110001110000010110000100000011110011001100000100100110000111" "011101000011001011011110001110001001101101011001110010000100101111110101000111011001011010010100101110" "011110000011011010000001100001001010110111000110101011111100111001011110100111011011000101100000011011" "011111000011101001000101000011000001001000110010011000101010001011001101101100011110010000001000011100" "100000000011111000101000110100001100111001000111011111100001111011011011100000100100101100100000010010" "100001000100001000101100110101001110011111100001010110000100111110011100110011000011101100110110101010" "100010000100011001010001000110100110010100001100000001100001011100000111001000101100000110101111110000" "100011000100101010010101101000110100110000000100011000010100101001001011110010111110111001100111110110" "100100000100111011111010011100011010001100111000000011101101000100101000011010010010011000011001110110" "100101000101001101111111100001110111000101000101100001001100011000101101100110001100011110101110111010" "100110000101100000100100111001101011110011111100000100001001011111111011101111110111100011001000000000" "100111000101110011101010100100011000110101011011110111010010101101110110001001110111100000000001011000" "101000000110000111010000100010011110100110010101111110001111111011101100101001000101110110100000001001" "101001000110011011010110110100011101100100001100010111000100111000111011111010011011110110001110110011" "101010000110101111111101011010110110001101010001111011110011011111100100110000110010011111000010111011" "101011000111000101000100010110001001000000101010100011111110001100011010010111000000111001011111100000" "101100000111011010101011100110110110011110001011000110001010011011000111110001100010001100100010100101" "101101000111110000110011001101011111000110011001011001100011000110001100111011001100011111101010111010" "101110001000000111011011001010100011011010101100010111011011001010110011001001000011100001100010100001" "101111001000011110100011011110100011111101001011111100110000010000011001100000110001110100011110101100" "110000001000110110001100001010000001010000110001001011101101010100011001001101010100001011001010110110" "110001001001001110010101001101011011111001000110001101001101011001100001111101100011101000111100110111" "110010001001100110111110101001010100011010100110010010011110011011001110111000101011000010011011001011" "110011001010000000001000011110001011011010011101110110100100000100110011110011110101100100001011100010" "110100001010011001110010101100100001011110101010011111111010101100100011010101000100101110110000011011" "110101001010110011111101010100110111001101111011000001111010010010101101101110111100100000001110001000" "110110001011001110101000010111101101001111101111011110011001100100011001000000110101001101000101100111" "110111001011101001110011110101100100001100011001000111010001000010010010000111100011010011101011001100" "111000001100000101011111101110111100101100111010011111111110001011010111101010000101111110011001001011" "111001001100100001101100000100010111011011000111011111000110101011011110001110001101110010111011111111" "111010001100111110011000110110010101000001100101001111111011101101101110100000101101110101110100100000" "111011001101011011100110000101010110001011101010010011111101010010111101011101001001110011010000000010" "111100001101111001010011110001111011100101011110100100011101101011111110100000110100100111111001110000" "111101001110010111100001111100100101111011111011010100000100110111110000010100110011101101110001010001" "111110001110110110010000100101110101111100101011010000010100000101100011111010111011011010111011100011" "111111001111010101011111101110001100010110001010100011001001011010111110101001011010001001110001000001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 96
set hasByteEnable 0
set MemName pow_generic_doublocq
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 97
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" "0000010000000000000000000111110000000000000101000101100101011001000101101101001000010010101000000" "0000100000000000000000011111100000000000101001101011001011101000101100001011101101001000010001100" "0000110000000000000001000111010000000010001101110000110100111101010011100011000101100100010010100" "0001000000000000000001111111000000000101010001010110100101000101011100000110100010101011000000110" "0001010000000000000011000110110000001010010100011100100001001111100110011011001111100010111101001" "0001100000000000000100011110100000010001110111000010110000001010010011011110010001010110011011000" "0001110000000000000110000110010000011100011001001001011010000100000100101010100111010101101000001" "0010000000000000000111111110000000101010011010110000101000101011011011111111001010111001001111110" "0010010000000000001010000101110000111100011011111000100111001110111100000100101111100101011110101" "0010100000000000001100011101100001010010111100100001100010011101001000010100000011001101100010010" "0010110000000000001111000101010001101110011100101011101000100100100100111011101101110111101000001" "0011000000000000010001111101000010001111011100010111001001010011110111000110010010000001011010011" "0011010000000000010101000100110010110110011011100100010101111001100101000000001100100100111001111" "0011100000000000011000011100100011100011111010010011100001000100010101111101110100111101110111011" "0011110000000000011100000100010100011000011000100100111111000010110010100001011101001111101001011" "0100000000000000011111111100000101010100010110011001000101100011100100100001010010001011100001100" "0100010000000000100100000011110110011000010011110000001011110101010111001101011011010111011110101" "0100100000000000101000011011100111100100110000101010101010100110110111010101111011010101011101011" "0100110000000000101101000011011000111010001101001000111100000110110011010000101111101011000111011" "0101000000000000110001111011001010011001001001001011011100000011111010111111110001001001111111001" "0101010000000000110111000010111100000010000100110010100111101101000000010110110011111000001011011" "0101100000000000111100011010101101110101011111111110111101110000110111000001100111011001011110111" "0101110000000001000010000010011111110011111010110000111110011110010100101001110110111001000000010" "0110000000000001000111111010010001111101110101001001001011100100010000111101001001010011001101100" "0110010000000001001110000010000100010011101111001000001000010001100101110011000001100000011111100" "0110100000000001010100011001110110110110001000101110011001010101001111010010111110100000001010011" "0110110000000001011011000001101001100101100001111100100100111110001011111010011011100011111100011" "0111000000000001100001111001011100100010011010110011010010111011011100100010110000011011111010101" "0111010000000001101001000001001111101101010011010011001100011100000100100111010001100010111011110" "0111100000000001110000011001000011000110101011011100111100001111001010001011010000001011100000110" "0111110000000001111000000000110110101111000011010001001110100011110101111111111010101101001011111" "1000000000000001111111111000101010100110111010110000110001001001010011101010011100110010010101011" "1000010000000010001000000000011110101110110001111100010011001110110001101001111111100110011110100" "1000100000000010010000011000010011000111001000110100100101100011100001011101101010000101000010001" "1000110000000010011001000000000111110000011111011010011010010110110111101010100001001000100011110" "1001000000000010100001110111111100101011010101101110100101011000001100000001100111111010011100101" "1001010000000010101010111111110001111000001011110001111011110110111001100110000000000011000110010" "1001100000000010110100010111100111010111100001100101010100100010011110110010101001111010100011101" "1001110000000010111101111111011101001001110111001001100111101010011101100000100100111001101000101" "1010000000000011000111110111010011001111101100011111101110111110011011001100101111101011011110000" "1010010000000011010001111111001001101001100001101000100101101110000000111110001000011111100101010" "1010100000000011011100010111000000010111110110100101001000101000111011101011101101011100011001101" "1010110000000011100110111110110111011011001011010110010101111110111100000010011100110010001110111" "1011000000000011110001110110101110110011111111111101001101011111110110101011010101001110101110011" "1011010000000011111100111110100110100010110100011010110000011011100100010001010110010000110010111" "1011100000000100001000010110011110101000001000110000000001100010000001100111100000011101000000111" "1011110000000100010011111110010111000100011100111110000101000011001111101110110101110010011110010" "1100000000000100011111110110001111111000010001000110000000101111010011111100011010000000000111110" "1100010000000100101011111110001001000100000101001000111011110110010111111111010010111010100011110" "1100100000000100111000010110000010101000011001000111111111001000101010000110101000110010010011101" "1100110000000101000100111101111100100101101101000100010100110110011101000111100110101010100011100" "1101000000000101010001110101110110111100100000111111001000110000001000100011011010110000010111011" "1101010000000101011110111101110001101101010100111001101000000110001000101101010110110010010110010" "1101100000000101101100010101101100111000101000110101000001101000111110110000110000011000110100010" "1101110000000101111001111101101000011110111100110010100101101001010000110111000001011110011001011" "1110000000000110000111110101100100100000110000110011100101110111101010001101101000101001000111100" "1110010000000110010101111101100000111110100100111001010101100100111011001100001001100011111101100" "1110100000000110100100010101011101111000111001000101001001100001111001011010001101011000111001100" "1110110000000110110010111101011011010000001101011000010111111111011111110101100011001011010111111" "1111000000000111000001110101011001000101000001110100011000101110101110111000000000010011010001001" "1111010000000111010000111101010111010111110110011010100101000000101100011101100000111000010101101" "1111100000000111100000010101010110001001001011001100010111100110100100001010001000001110000111010" "1111110000000111101111111101010101011001100000001011001100110001100111010000000001010000010001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 97
set hasByteEnable 0
set MemName pow_generic_doublpcA
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 92
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" "00000100000000000000000000000011111111110000000000000101010100110101010110011101010100010101" "00001000000000000000000000001111111111100000000000101010101000101010101110101010100010101010" "00001100000000000000000000100011111111010000000010001111111011100000001101000111100101000001" "00010000000000000000000000111111111111000000000101010101001101010101111001010100010101011001" "00010100000000000000000001100011111110110000001010011010011110001011111101110000101101110101" "00011000000000000000000010001111111110100000010001111111101110000010100111111100101000011001" "00011100000000000000000011000011111110010000011100100100111100111010001000010111111111001100" "00100000000000000000000011111111111110000000101010101010001010110010110010100010101100010100" "00100100000000000000000101000011111101110000111100101111010111101100111100111100101001111100" "00101000000000000000000110001111111101100001010011010100100011101001000001000101110010010010" "00101100000000000000000111100011111101010001101110111001101110100111011011011101111111100111" "00110000000000000000001000111111111101000010001111111110111000101000101011100101001100010000" "00110100000000000000001010100011111100110010110111000100000001101101010011111011010010100101" "00111000000000000000001100001111111100100011100100101001001001110101111010000000001101000100" "00111100000000000000001110000011111100010100011001001110010001000011000110010011110110001111" "01000000000000000000001111111111111100000101010101010011010111010101100100010110001000101101" "01000100000000000000010010000011111011110110011001011000011100101110000010100110111111001100" "01001000000000000000010100001111111011100111100101111101100001001101010010100110010100011111" "01001100000000000000010110100011111011011000111011100010100100110100001000110100000011011111" "01010000000000000000011000111111111011001010011010100111100111100011011100110000000111001100" "01010100000000000000011011100011111010111100000011101100101001011100001000111010011010101110" "01011000000000000000011110001111111010101101110111010001101010011111001010110010111001010011" "01011100000000000000100001000011111010011111110101110110101010101101100010111001011110010010" "01100000000000000000100011111111111010010001111111111011101010001000010100101110000101001011" "01100100000000000000100111000011111010000100010110000000101000110000100110110000101001100101" "01101000000000000000101010001111111001110110111000100101100110100111100010100001000111010000" "01101100000000000000101101100011111001101001101000001010100011101110010100011111011010000110" "01110000000000000000110000111111111001011100100101001111100000000110001100001011011110001011" "01110100000000000000110100100011111001001111110000010100011011110000011100000101001111101110" "01111000000000000000111000001111111001000011001001111001010110101110011001101100101011000101" "01111100000000000000111100000011111000110110110010011110010001000001011101100001101100110101" "10000000000000000000111111111111111000101010101010100011001010101011000011000100010001101100" "10000100000000000001000100000011111000011110110010101000000011101100101000110100010110100100" "10001000000000000001001000001111111000010011001011001100111100000111110000010001111000100011" "10001100000000000001001100100011111000000111110100110001110011111101111101111100110100111100" "10010000000000000001010000111111110111111100101111110110101011010000111001010101001001001101" "10010100000000000001010101100011110111110001111100111011100010000010001100111010110011000011" "10011000000000000001011010001111110111100111011100100000011000010011100110001101110000011001" "10011100000000000001011111000011110111011101001111000101001110000110110101101101111111010101" "10100000000000000001100011111111110111010011010101001010000011011101101110111011011110001110" "10100100000000000001101001000011110111001001101111001110111000011010001000010110001011101000" "10101000000000000001101110001111110111000000011101110011101100111101111011011110000110010110" "10101100000000000001110011100011110110110111100001011000100001001011000100110011001101011101" "10110000000000000001111000111111110110101110111010011101010101000011100011110101100000001110" "10110100000000000001111110100011110110100110101001100010001000101001011011000100111110001100" "10111000000000000010000100001111110110011110101111000110111011111110110000000001100111001011" "10111100000000000010001010000011110110010111001011101011101111000101101011001011011011001111" "11000000000000000010001111111111110110001111111111110000100010000000011000000010011010101101" "11000100000000000010010110000011110110001001001011110101010100110001000101000110100110001101" "11001000000000000010011100001111110110000010110000011010000111011010000011110111111110100111" "11001100000000000010100010100011110101111100101101111110111001111101101000110110100101000111" "11010000000000000010101000111111110101110111000101000011101100011110001011100010011011001100" "11010100000000000010101111100011110101110001110110001000011110111110000110011011100010100101" "11011000000000000010110110001111110101101101000001101101010001011111110111000001111101011010" "11011100000000000010111101000011110101101000101000010010000100000101111101110101101110000001" "11100000000000000011000011111111110101100100101010010110110110110010111110010110110111001001" "11100100000000000011001011000011110101100001001000011011101001101001011111000101011011110010" "11101000000000000011010010001111110101011110000011000000011100101100001001100001011111010011" "11101100000000000011011001100011110101011011011010100101001111111101101010001011000101011000" "11110000000000000011100000111111110101011001001111101010000011100000110000100010010010000100" "11110100000000000011101000100011110101010111100010101110110111011000001111000111001001101101" "11111000000000000011110000001111110101010110010100010011101011100110111011011001110001000010" "11111100000000000011111000000011110101010101100100111000100000001111101101111010001101001001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 98
set hasByteEnable 0
set MemName pow_generic_doublqcK
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 87
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" "000001000000000000000000000000000001111111111111110000000000000101010101010100010101010" "000010000000000000000000000000000111111111111111100000000000101010101010100110101010101" "000011000000000000000000000000010001111111111111010000000010001111111111110111000000010" "000100000000000000000000000000011111111111111111000000000101010101010101000101010110010" "000101000000000000000000000000110001111111111110110000001010011010101010010001101101000" "000110000000000000000000000001000111111111111110100000010001111111111111011100000101000" "000111000000000000000000000001100001111111111110010000011100100101010100100100011110101" "001000000000000000000000000001111111111111111110000000101010101010101001101010111010101" "001001000000000000000000000010100001111111111101110000111100101111111110101111011001101" "001010000000000000000000000011000111111111111101100001010011010101010011110001111100011" "001011000000000000000000000011110001111111111101010001101110111010101000110010100011110" "001100000000000000000000000100011111111111111101000010001111111111111101110001010001000" "001101000000000000000000000101010001111111111100110010110111000101010010101110000100111" "001110000000000000000000000110000111111111111100100011100100101010100111101001000000101" "001111000000000000000000000111000001111111111100010100011001001111111100100010000101110" "010000000000000000000000000111111111111111111100000101010101010101010001011001010101010" "010001000000000000000000001001000001111111111011110110011001011010100110001110110000111" "010010000000000000000000001010000111111111111011100111100101111111111011000010011010000" "010011000000000000000000001011010001111111111011011000111011100101001111110100010010011" "010100000000000000000000001100011111111111111011001010011010101010100100100100011011101" "010101000000000000000000001101110001111111111010111100000011101111111001010010110111101" "010110000000000000000000001111000111111111111010101101110111010101001101111111101000011" "010111000000000000000000010000100001111111111010011111110101111010100010101010101111110" "011000000000000000000000010001111111111111111010010001111111111111110111010100010000000" "011001000000000000000000010011100001111111111010000100010110000101001011111100001011001" "011010000000000000000000010101000111111111111001110110111000101010100000100010100011110" "011011000000000000000000010110110001111111111001101001101000001111110101000111011011111" "011100000000000000000000011000011111111111111001011100100101010101001001101010110110010" "011101000000000000000000011010010001111111111001001111110000011010011110001100110101100" "011110000000000000000000011100000111111111111001000011001001111111110010101101011100000" "011111000000000000000000011110000001111111111000110110110010100101000111001100101100110" "100000000000000000000000011111111111111111111000101010101010101010011011101010101010101" "100001000000000000000000100010000001111111111000011110110010101111110000000111011000100" "100010000000000000000000100100000111111111111000010011001011010101000100100010111001011" "100011000000000000000000100110010001111111111000000111110100111010011000111101010000100" "100100000000000000000000101000011111111111110111111100101111111111101101010110100001000" "100101000000000000000000101010110001111111110111110001111101000101000001101110101110010" "100110000000000000000000101101000111111111110111100111011100101010010110000101111011110" "100111000000000000000000101111100001111111110111011101001111001111101010011100001100111" "101000000000000000000000110001111111111111110111010011010101010100111110110001100101010" "101001000000000000000000110100100001111111110111001001101111011010010011000110001000110" "101010000000000000000000110111000111111111110111000000011101111111100111011001111011000" "101011000000000000000000111001110001111111110110110111100001100100111011101101000000000" "101100000000000000000000111100011111111111110110101110111010101010001111111111011011101" "101101000000000000000000111111010001111111110110100110101001101111100100010001010010000" "101110000000000000000001000010000111111111110110011110101111010100111000100010100111011" "101111000000000000000001000101000001111111110110010111001011111010001100110011011111111" "110000000000000000000001000111111111111111110110001111111111111111100001000100000000000" "110001000000000000000001001011000001111111110110001001001100000100110101010100001100000" "110010000000000000000001001110000111111111110110000010110000101010001001100100001000110" "110011000000000000000001010001010001111111110101111100101110001111011101110011111010100" "110100000000000000000001010100011111111111110101110111000101010100110010000011100110010" "110101000000000000000001010111110001111111110101110001110110011010000110010011010000111" "110110000000000000000001011011000111111111110101101101000001111111011010100010111111000" "110111000000000000000001011110100001111111110101101000101000100100101110110010110101111" "111000000000000000000001100001111111111111110101100100101010101010000011000010111010101" "111001000000000000000001100101100001111111110101100001001000101111010111010011010010011" "111010000000000000000001101001000111111111110101011110000011010100101011100100000010011" "111011000000000000000001101100110001111111110101011011011010111001111111110101010000001" "111100000000000000000001110000011111111111110101011001001111111111010100000111000001000" "111101000000000000000001110100010001111111110101010111100011000100101000011001011010101" "111110000000000000000001111000000111111111110101010110010100101001111100101100100010101" "111111000000000000000001111100000001111111110101010101100101001111010001000000011111000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 99
set hasByteEnable 0
set MemName pow_generic_doublrcU
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 82
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "0000000000000000000000000000000000000000000000000000000000000000000000000000000000" "0000010000000000000000000000000000000000111111111111111111110000000000000101010101" "0000100000000000000000000000000000000011111111111111111111100000000000101010101010" "0000110000000000000000000000000000001000111111111111111111010000000010001111111111" "0001000000000000000000000000000000001111111111111111111111000000000101010101010101" "0001010000000000000000000000000000011000111111111111111110110000001010011010101010" "0001100000000000000000000000000000100011111111111111111110100000010001111111111111" "0001110000000000000000000000000000110000111111111111111110010000011100100101010101" "0010000000000000000000000000000000111111111111111111111110000000101010101010101010" "0010010000000000000000000000000001010000111111111111111101110000111100101111111111" "0010100000000000000000000000000001100011111111111111111101100001010011010101010101" "0010110000000000000000000000000001111000111111111111111101010001101110111010101010" "0011000000000000000000000000000010001111111111111111111101000010001111111111111111" "0011010000000000000000000000000010101000111111111111111100110010110111000101010101" "0011100000000000000000000000000011000011111111111111111100100011100100101010101010" "0011110000000000000000000000000011100000111111111111111100010100011001001111111111" "0100000000000000000000000000000011111111111111111111111100000101010101010101010101" "0100010000000000000000000000000100100000111111111111111011110110011001011010101010" "0100100000000000000000000000000101000011111111111111111011100111100101111111111111" "0100110000000000000000000000000101101000111111111111111011011000111011100101010101" "0101000000000000000000000000000110001111111111111111111011001010011010101010101010" "0101010000000000000000000000000110111000111111111111111010111100000011101111111111" "0101100000000000000000000000000111100011111111111111111010101101110111010101010101" "0101110000000000000000000000001000010000111111111111111010011111110101111010101010" "0110000000000000000000000000001000111111111111111111111010010001111111111111111111" "0110010000000000000000000000001001110000111111111111111010000100010110000101010101" "0110100000000000000000000000001010100011111111111111111001110110111000101010101010" "0110110000000000000000000000001011011000111111111111111001101001101000001111111111" "0111000000000000000000000000001100001111111111111111111001011100100101010101010100" "0111010000000000000000000000001101001000111111111111111001001111110000011010101010" "0111100000000000000000000000001110000011111111111111111001000011001001111111111111" "0111110000000000000000000000001111000000111111111111111000110110110010100101010100" "1000000000000000000000000000001111111111111111111111111000101010101010101010101010" "1000010000000000000000000000010001000000111111111111111000011110110010101111111111" "1000100000000000000000000000010010000011111111111111111000010011001011010101010100" "1000110000000000000000000000010011001000111111111111111000000111110100111010101010" "1001000000000000000000000000010100001111111111111111110111111100101111111111111111" "1001010000000000000000000000010101011000111111111111110111110001111101000101010100" "1001100000000000000000000000010110100011111111111111110111100111011100101010101010" "1001110000000000000000000000010111110000111111111111110111011101001111001111111111" "1010000000000000000000000000011000111111111111111111110111010011010101010101010100" "1010010000000000000000000000011010010000111111111111110111001001101111011010101001" "1010100000000000000000000000011011100011111111111111110111000000011101111111111111" "1010110000000000000000000000011100111000111111111111110110110111100001100101010100" "1011000000000000000000000000011110001111111111111111110110101110111010101010101001" "1011010000000000000000000000011111101000111111111111110110100110101001101111111111" "1011100000000000000000000000100001000011111111111111110110011110101111010101010100" "1011110000000000000000000000100010100000111111111111110110010111001011111010101001" "1100000000000000000000000000100011111111111111111111110110001111111111111111111111" "1100010000000000000000000000100101100000111111111111110110001001001100000101010100" "1100100000000000000000000000100111000011111111111111110110000010110000101010101001" "1100110000000000000000000000101000101000111111111111110101111100101110001111111110" "1101000000000000000000000000101010001111111111111111110101110111000101010101010100" "1101010000000000000000000000101011111000111111111111110101110001110110011010101001" "1101100000000000000000000000101101100011111111111111110101101101000001111111111110" "1101110000000000000000000000101111010000111111111111110101101000101000100101010100" "1110000000000000000000000000110000111111111111111111110101100100101010101010101001" "1110010000000000000000000000110010110000111111111111110101100001001000101111111110" "1110100000000000000000000000110100100011111111111111110101011110000011010101010100" "1110110000000000000000000000110110011000111111111111110101011011011010111010101001" "1111000000000000000000000000111000001111111111111111110101011001001111111111111110" "1111010000000000000000000000111010001000111111111111110101010111100011000101010011" "1111100000000000000000000000111100000011111111111111110101010110010100101010101001" "1111110000000000000000000000111110000000111111111111110101010101100101001111111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 100
set hasByteEnable 0
set MemName pow_generic_doublsc4
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 77
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "00000000000000000000000000000000000000000000000000000000000000000000000000000" "00000100000000000000000000000000000000000000011111111111111111111111110000000" "00001000000000000000000000000000000000000001111111111111111111111111100000000" "00001100000000000000000000000000000000000100011111111111111111111111010000000" "00010000000000000000000000000000000000000111111111111111111111111111000000000" "00010100000000000000000000000000000000001100011111111111111111111110110000001" "00011000000000000000000000000000000000010001111111111111111111111110100000010" "00011100000000000000000000000000000000011000011111111111111111111110010000011" "00100000000000000000000000000000000000011111111111111111111111111110000000101" "00100100000000000000000000000000000000101000011111111111111111111101110000111" "00101000000000000000000000000000000000110001111111111111111111111101100001010" "00101100000000000000000000000000000000111100011111111111111111111101010001101" "00110000000000000000000000000000000001000111111111111111111111111101000010001" "00110100000000000000000000000000000001010100011111111111111111111100110010110" "00111000000000000000000000000000000001100001111111111111111111111100100011100" "00111100000000000000000000000000000001110000011111111111111111111100010100011" "01000000000000000000000000000000000001111111111111111111111111111100000101010" "01000100000000000000000000000000000010010000011111111111111111111011110110011" "01001000000000000000000000000000000010100001111111111111111111111011100111100" "01001100000000000000000000000000000010110100011111111111111111111011011000111" "01010000000000000000000000000000000011000111111111111111111111111011001010011" "01010100000000000000000000000000000011011100011111111111111111111010111100000" "01011000000000000000000000000000000011110001111111111111111111111010101101110" "01011100000000000000000000000000000100001000011111111111111111111010011111110" "01100000000000000000000000000000000100011111111111111111111111111010010001111" "01100100000000000000000000000000000100111000011111111111111111111010000100010" "01101000000000000000000000000000000101010001111111111111111111111001110110111" "01101100000000000000000000000000000101101100011111111111111111111001101001101" "01110000000000000000000000000000000110000111111111111111111111111001011100100" "01110100000000000000000000000000000110100100011111111111111111111001001111110" "01111000000000000000000000000000000111000001111111111111111111111001000011001" "01111100000000000000000000000000000111100000011111111111111111111000110110110" "10000000000000000000000000000000000111111111111111111111111111111000101010101" "10000100000000000000000000000000001000100000011111111111111111111000011110110" "10001000000000000000000000000000001001000001111111111111111111111000010011001" "10001100000000000000000000000000001001100100011111111111111111111000000111110" "10010000000000000000000000000000001010000111111111111111111111110111111100101" "10010100000000000000000000000000001010101100011111111111111111110111110001111" "10011000000000000000000000000000001011010001111111111111111111110111100111011" "10011100000000000000000000000000001011111000011111111111111111110111011101001" "10100000000000000000000000000000001100011111111111111111111111110111010011010" "10100100000000000000000000000000001101001000011111111111111111110111001001101" "10101000000000000000000000000000001101110001111111111111111111110111000000011" "10101100000000000000000000000000001110011100011111111111111111110110110111100" "10110000000000000000000000000000001111000111111111111111111111110110101110111" "10110100000000000000000000000000001111110100011111111111111111110110100110101" "10111000000000000000000000000000010000100001111111111111111111110110011110101" "10111100000000000000000000000000010001010000011111111111111111110110010111001" "11000000000000000000000000000000010001111111111111111111111111110110001111111" "11000100000000000000000000000000010010110000011111111111111111110110001001001" "11001000000000000000000000000000010011100001111111111111111111110110000010110" "11001100000000000000000000000000010100010100011111111111111111110101111100101" "11010000000000000000000000000000010101000111111111111111111111110101110111000" "11010100000000000000000000000000010101111100011111111111111111110101110001110" "11011000000000000000000000000000010110110001111111111111111111110101101101000" "11011100000000000000000000000000010111101000011111111111111111110101101000101" "11100000000000000000000000000000011000011111111111111111111111110101100100101" "11100100000000000000000000000000011001011000011111111111111111110101100001001" "11101000000000000000000000000000011010010001111111111111111111110101011110000" "11101100000000000000000000000000011011001100011111111111111111110101011011011" "11110000000000000000000000000000011100000111111111111111111111110101011001001" "11110100000000000000000000000000011101000100011111111111111111110101010111100" "11111000000000000000000000000000011110000001111111111111111111110101010110010" "11111100000000000000000000000000011111000000011111111111111111110101010101100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 101
set hasByteEnable 0
set MemName pow_generic_doubltde
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 58
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "1000000000000000000000000000000000000000000000000000000000" "1000000010000000010000000001010101011010101010111011101111" "1000000100000001000000001010101100000000001000100010110110" "1000000110000010010000100100000110110001000000111011010100" "1000001000000100000001010101101010101110111100011100100010" "1000001010000110010010100111011110111101000100000011011011" "1000001100001001000100100001101100100000100001101110100010" "1000001110001100010111001100011110100001000001000010011101" "1000010000010000001010110000000010001001001111110110010011" "1000010010010100011111010100100110100111011111001000010010" "1000010100011001010101000010011101001110000011111010110000" "1000010110011110101100000001111001010011111000011001001110" "1000011000100100100100011011010000010100111101000101111000" "1000011010101010111110010110111001110010111010001111010010" "1000011100110001111001111101001111010101100001001110100010" "1000011110111001010111010110101100101011001110001101101101" "1000100001000001010110101011101111101001101001110110101111" "1000100011001001111000000100111000001110001011001010111000" "1000100101010010111011101010101000011110011001100010011011" "1000100111011100100001100101100100101000101110110101001001" "1000101001100110101001111110010011000100111001101011001000" "1000101011110001010100111101011100010100011111110110010100" "1000101101111100100010101011101011000011100000110100100101" "1000110000001000010011010001101100001000111000011010011111" "1000110010010100100110111000001110100111000001100110101101" "1000110100100001011101101000000011101100011001011110001100" "1000110110101110110111101001111110110100000010010001000110" "1000111000111100110101000110110101100110000110101000011011" "1000111011001011010110000111011111111000011100111100100111" "1000111101011010011010110100110111101111001010110100110100" "1000111111101010000011010111111001011101001000101111001101" "1001000001111010001111111001100011100100100101110010001100" "1001000100001011000000100010110110110111101011100110011111" "1001000110011100010101011100110110011001000010011010010010" "1001001000101110001110110000100111011100010101001101011110" "1001001011000000101100100111010001100110110110000110110000" "1001001101010011101111001001111110110000000010110010000101" "1001001111100111010110100001111011000010001001001000000101" "1001010001111011100010111000010100111010101011111110101110" "1001010100010000010100010110011101001011001000000011000111" "1001010110100101101011000101100110111001011000111100101010" "1001011000111011100111001111000111100000011110011001010111" "1001011011010010001000111100010110110001000001100011100111" "1001011101101001010000010110101110110001111010100001001001" "1001100000000000111101100111101100000000110101111011100000" "1001100010011001010000111000101101010010111010110001111000" "1001100100110010001010010011010011110101010000010100011111" "1001100111001011101010000001000011001101100100001001010101" "1001101001100101110000001011100001011010110000011010100101" "1001101100000000011100111100010110110101100010001110100011" "1001101110011011110000011101001110010001000000001001001001" "1001110000110111101010110111110100111011010000110111001100" "1001110011010100001100010101111010011110000010000011001011" "1001110101110001010101000001010000111111001111010100000000" "1001111000001111000101000011101101000001101001010101001111" "1001111010101101011100100111000101100101011101001001011001" "1001111101001100011011110101010100001000111011100101110101" "1001111111101100000010111000010100101001000000111000110001" "1010000010001100010001111010000101100001111100011001000001" "1010000100101101001001000100100111101111111000011111110011" "1010000111001110101000100001111110101111100010101100011101" "1010001001110000110000011100010000011110110011110010010011" "1010001100010011100000111101100101011101011000010000011011" "1010001110110110111010010000001000101101011000110011110001" "1010010001011010111100011110000111110100000011000011001100" "1010010011111111100111110001110010111010010010010101110101" "1010010110100100111100010101011100101101011000110011101000" "1010011001001010111010010011011010011111101000100000001110" "1010011011110001100001110110000100001000111100110000000010" "1010011110011000110011000111110100000111100011100111110011" "1010100001000000101110010011000111100000100111100110011110" "1010100011101001010011100010011110000000111001011001100001" "1010100110010010100011000000011001111101011001111011101101" "1010101000111100011100110111100000010100000100011110100000" "1010101011100111000001010010011000101100011000111101110110" "1010101110010010010000011011101101011000000110011110101100" "1010110000111110001010011110001011010011110101111000000100" "1010110011101010101111100100100010000111110100100110111100" "1010110110010111111111111001100100001000011111101100101010" "1010111001000101111011101000000110010111001110111000010001" "1010111011110100100010111011000000100010111111111010100111" "1010111110100011110101111101001101001001000010000101001110" "1011000001010011110100111001101001010101100001110100001110" "1011000100000100011111111011010101000100010100100011000010" "1011000110110101110111001101010011000001100100101100001001" "1011001001100111111010111010101000101010011101110011110111" "1011001100011010101011001110011110001101111000111110001011" "1011001111001110001000010011111110101101001001001111100111" "1011010010000010010010010110010111111100101000011001011001" "1011010100110111001001100000111010100100100011110000101111" "1011010111101100101101111110111010000001101001010001001111" "1011011010100010111111111011101100100101110100101010110110" "1011011101011001111111100010101011011000111100111010110110" "1011100000010001101100111111010010011001100001110000011011" "1011100011001010001000011101000000011101011001011100100101" "1011100110000011010010000111010111010010011110101101011011" "1011101000111101001010001001111011011111011110110101001100" "1011101011110111110000110000010100100100100111111100011111" "1011101110110011000110000110001100111100010111100000011101" "1011110001101111001010010111010001111100001000111100010111" "1011110100101011111101101111010011110101000100011110111100" "1011110111101001100000011010000101110100101110001011011111" "1011111010100111110010100011011110000101110101000110101101" "1011111101100110110100010111010101110001000010101111010111" "1100000000100110100110000001101000111101101010100010111001" "1100000011100111000111101110010110110010011001101101110001" "1100000110101000011001101001100001010110000111000111111110" "1100001001101010011011111111001101110000100011011101011110" "1100001100101101001110111011100100001011001001100010101000" "1100001111110000110010101010101111110001101110110100110100" "1100010010110101000111011000111110110011010100000111001101" "1100010101111010001101010010100010100010110110011011101010" "1100011001000000000100100011101111011000000000000111111011" "1100011100000110101101011000111100101111111010000111001010" "1100011111001110000111111110100101001101111101010111101101" "1100100010010110010100100001000110011100100100100101010100" "1100100101011111010011001101000001001101111101111111110110" "1100101000101001000100001110111001011100111101011110010111" "1100101011110011100111110011010110001101101110101110110011" "1100101110111110111110000111000001101110100111110010010011" "1100110010001011000111010110101001011000111011100110000010" "1100110101011000000011101110111101110001101100111000110110" "1100111000100101110011011100110010101010100001001101100011" "1100111011110100010110101100111111000010010100001010000010" "1100111111000011101101101100011101000110001010110011001010" "1101000010010011111000101000001010010010000111010101101001" "1101000101100100110111101101000111010001111100111011110101" "1101001000110110101011001000011000000010000011110000010101" "0100110110100010110010111111000110111110010110000010011111" "0100110111110000100101011001110000001001110000110111010111" "0100111000111110101011010011011011110001010010011000010011" "0100111010001101000100110001000010001100100010111011111001" "0100111011011011110001110111011101000001011010100100011001" "0100111100101010110010101011100111000100010100100110000001" "0100111101111010000111010010011100011000100011010010010101" "0100111111001001101111110000111010010000100011101000010110" "0101000000011001101100001011111111001110010001001001101110" "0101000001101001111100101000101011000011011001110100111100" "0101000010111010100001001011111110110001110010000100010100" "0101000100001011011001111010111100101011101000110010001010" "0101000101011100100110111010101000010011111011100001111101" "0101000110101110001000010000000110011110101010101110100000" "0101000111111111111110000000011101010001001101111101001001" "0101001001010010001000010000110100000010101000010110001010" "0101001010100100100111000110010011011011111101000010001101" "0101001011110111011010100110000101011000100011101100110100" "0101001101001010100010110101010101000110011101001100001101" "0101001110011101111111111001001111000110101000001110000100" "0101001111110001110001110111000001001101010110001001101100" "0101010001000101111000110011111010100010011111110111001101" "0101010010011010010100110101001011100001111010101100000100" "0101010011101111000110000000000101111011101101011100110101" "0101010101000100001100011001111100110100100101100100001001" "0101010110011001101000001000000100100110001100001111000000" "0101010111101111011001001111110010111111011011101110011100" "0101011001000101011111110110011111000100110100101110011000" "0101011010011011111100000001100001010000110011110001111110" "0101011011110010101101110110010011010100000110110101001101" "0101011101001001110101011010010000010110000010110100000000" "0101011110100001010010110010110100110100111001010110101001" "0101011111111001000110000101011110100110001110100011101010" "0101100001010001001111010111101100110111001110110111001101" "0101100010101001101110101111000000001101000100111111111000" "0101100100000010100100010000111010100101010000000001000001" "0101100101011011110000000010111111010101111001011010100110" "0101100110110101010010001010110011001110001011010110100011" "0101101000001111001010101101111100010110100110111011110011" "0101101001101001011001110010000010010001011010100110101100" "0101101011000011111111011100101101111010111000100111001110" "0101101100011110111011110011101001101001101101100100110001" "0101101101111010001110111100100001001111010111000111100001" "0101101111010101111000111101000001111000011010100111100100" "0101110000110001111001111010111010001100111100000001101010" "0101110010001110010001111011111010010000110100110001110011" "0101110011101011000001000101110011100100001010110011010111" "0101110101001000000111011110011001000011100111100111001111" "0101110110100101100101001011011111001000101111011111100001" "0101111000000011011010010010111011101010011000110001001000" "0101111001100001100110111010100101111101000011001011010010" "0101111011000000001011001000010110110011001111010100101111" "0101111100011111000111000010001000011101110110001110111111" "0101111101111110011010101101110110101100100000111111010001" "0101111111011110000110010001011110101110000000011101100100" "0110000000111110001001110010111111010000100101001001100100" "0110000010011110100101011000011000100010010111000101011110" "0110000011111111011001000111101100010001101101110111000000" "0110000101100000100101000110111101101101101000101110001010" "0110000111000010001001011100010001100110000110110010010100" "0110001000100100000110001101101110001100011111010101000011" "0110001010000110011011100001011011010011111010001011011001" "0110001011101001001001011101100010010001101000001100111001" "0110001101001100010000001000001101111101011011111001000011" "0110001110101111101111100111101010110010000010000010101110" "0110010000010011101000000010000110101101011010100001111000" "0110010001110111111001011101110001010001010001001011011000" "0110010011011100100100000000111011100011010110101111001011" "0110010101000001100111110001111000001101111001111100100111" "0110010110100111000100110110111011100000000000101101000111" "0110011000001100111011010110011011001110000001010101000011" "0110011001110011001011010110101110110001111011111011001000" "0110011011011001110100111110001111001011110011110101111010" "0110011101000000111000010011010111000010001001001111111001" "0110011110101000010101011100100010100010010010110001110111" "0110100000010000001100100000001111100000110111010011110001" "0110100001111000011101100100111101011010000111110100000000" "0110100011100001001000110001001101010010011001010101001100" "0110100101001010001110001011100001110110011111000010011000" "0110100110110011101101111010011111011100000100011001111101" "0110101000011101101000000100101100000010000111011110111100" "0110101010000111111100110000101111010001010011010000111001" "0110101011110010101100000101010010011100011010001010100011" "0110101101011101110110001001000000100000110000100110111011" "0110101111001001011011000010100110000110100111101101001010" "0110110000110101011010111000110001100001101000000011000011" "0110110010100001110101110010010010110001001100100110010011" "0110110100001110101011110101111011100000111101101100011011" "0110110101111011111101001010011111001001001100001001100010" "0110110111101001101001110110110010101111001100011101110110" "0110111001010111110010000001101101000101110010001010000000" "0110111011000110010101110010000110101101101011001010010000" "0110111100110101010101001110111001110101111011011000100000" "0110111110100100110000011111000010011100011000010101001111" "0111000000010100100111101001011110001110000100110111011100" "0111000010000100111010110101001100100111101101000011011000" "0111000011110101101010001001001110110110000010001000011000" "0111000101100110110101101100100111110110010110100101101001" "0111000111011000011101100110011100010110111010010110000111" "0111001001001010100001111101110010110111010111000011010101" "0111001010111101000010111001110011101001001100011111011001" "0111001100110000000000100001101000110000001101000110000111" "0111001110100011011010111100011110000010111010100101001101" "0111010000010111010010010001100001001011000010101011101110" "0111010010001011100110101000000001100101111100000000101011" "0111010100000000011000000111010000100101000011000000110100" "0111010101110101100110110110100001001110010111000011110011" "0111010111101011010010111101001000011100110111101000100000" "0111011001100001011100100010011101000001000001101000110001" "0111011011011000000011101101110111100001001100110100011000" "0111011101001111001000100110110010011010001001010011011111" "0111011111000110101011010100101001111111011101010000011100" "0111100000111110101011111110111100011100000010101000111100" "0111100010110111001010101101001001110010100101000110110100" "0111100100110000000111100110110011111110000000000000000101" "0111100110101001100010110011011110110001111100011110101111" "0111101000100011011100011010101111111011001111101111111011" "0111101010011101110100100100001111000000011001011010110000" "0111101100011000101011010111100101100010000001111110101111" "0111101110010100000000111100011110111011011001011001110001" "0111110000001111110101011010101000100010110101110101111001" "0111110010001100001000111001110001101010010010011110101001" "0111110100001000111011100001101011011111101110011110010001" "0111110110000110001101011010001001001101101100000010011101" "0111111000000011111110101010111111111011101111101001001001" "0111111010000010001111011100000110101110111111010100111000" "0111111100000000111111110101010110101010100010001001001111" "0111111110000000001111111110101010101111111111101110111100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 102
set hasByteEnable 0
set MemName pow_generic_doubludo
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 26
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "00000000000000000000000000" "00000000000000010000000000" "00000000000001000000000000" "00000000000010010000000000" "00000000000100000000000000" "00000000000110010000000000" "00000000001001000000000000" "00000000001100010000000000" "00000000010000000000000000" "00000000010100010000000000" "00000000011001000000000000" "00000000011110010000000000" "00000000100100000000000000" "00000000101010010000000000" "00000000110001000000000000" "00000000111000010000000000" "00000001000000000000000000" "00000001001000010000000000" "00000001010001000000000000" "00000001011010010000000000" "00000001100100000000000000" "00000001101110010000000000" "00000001111001000000000000" "00000010000100010000000000" "00000010010000000000000000" "00000010011100010000000000" "00000010101001000000000000" "00000010110110010000000000" "00000011000100000000000000" "00000011010010010000000000" "00000011100001000000000000" "00000011110000010000000000" "00000100000000000000000000" "00000100010000010000000000" "00000100100001000000000000" "00000100110010010000000000" "00000101000100000000000000" "00000101010110010000000001" "00000101101001000000000001" "00000101111100010000000001" "00000110010000000000000001" "00000110100100010000000001" "00000110111001000000000001" "00000111001110010000000001" "00000111100100000000000001" "00000111111010010000000001" "00001000010001000000000001" "00001000101000010000000010" "00001001000000000000000010" "00001001011000010000000010" "00001001110001000000000010" "00001010001010010000000010" "00001010100100000000000010" "00001010111110010000000011" "00001011011001000000000011" "00001011110100010000000011" "00001100010000000000000011" "00001100101100010000000011" "00001101001001000000000011" "00001101100110010000000100" "00001110000100000000000100" "00001110100010010000000100" "00001111000001000000000100" "00001111100000010000000101" "00010000000000000000000101" "00010000100000010000000101" "00010001000001000000000101" "00010001100010010000000110" "00010010000100000000000110" "00010010100110010000000110" "00010011001001000000000110" "00010011101100010000000111" "00010100010000000000000111" "00010100110100010000000111" "00010101011001000000001000" "00010101111110010000001000" "00010110100100000000001000" "00010111001010010000001001" "00010111110001000000001001" "00011000011000010000001010" "00011001000000000000001010" "00011001101000010000001010" "00011010010001000000001011" "00011010111010010000001011" "00011011100100000000001100" "00011100001110010000001100" "00011100111001000000001100" "00011101100100010000001101" "00011110010000000000001101" "00011110111100010000001110" "00011111101001000000001110" "00100000010110010000001111" "00100001000100000000001111" "00100001110010010000010000" "00100010100001000000010000" "00100011010000010000010001" "00100100000000000000010010" "00100100110000010000010010" "00100101100001000000010011" "00100110010010010000010011" "00100111000100000000010100" "00100111110110010000010100" "00101000101001000000010101" "00101001011100010000010110" "00101010010000000000010110" "00101011000100010000010111" "00101011111001000000011000" "00101100101110010000011000" "00101101100100000000011001" "00101110011010010000011010" "00101111010001000000011011" "00110000001000010000011011" "00110001000000000000011100" "00110001111000010000011101" "00110010110001000000011110" "00110011101010010000011110" "00110100100100000000011111" "00110101011110010000100000" "00110110011001000000100001" "00110111010100010000100010" "00111000010000000000100011" "00111001001100010000100100" "00111010001001000000100100" "00111011000110010000100101" "00111100000100000000100110" "00111101000010010000100111" "00111110000001000000101000" "00111111000000010000101001" "01000000000000000000101010" "01000001000000010000101011" "01000010000001000000101100" "01000011000010010000101101" "01000100000100000000101110" "01000101000110010000101111" "01000110001001000000110000" "01000111001100010000110010" "01001000010000000000110011" "01001001010100010000110100" "01001010011001000000110101" "01001011011110010000110110" "01001100100100000000110111" "01001101101010010000111001" "01001110110001000000111010" "01001111111000010000111011" "01010001000000000000111100" "01010010001000010000111110" "01010011010001000000111111" "01010100011010010001000000" "01010101100100000001000001" "01010110101110010001000011" "01010111111001000001000100" "01011001000100010001000110" "01011010010000000001000111" "01011011011100010001001000" "01011100101001000001001010" "01011101110110010001001011" "01011111000100000001001101" "01100000010010010001001110" "01100001100001000001010000" "01100010110000010001010001" "01100100000000000001010011" "01100101010000010001010100" "01100110100001000001010110" "01100111110010010001011000" "01101001000100000001011001" "01101010010110010001011011" "01101011101001000001011101" "01101100111100010001011110" "01101110010000000001100000" "01101111100100010001100010" "01110000111001000001100011" "01110010001110010001100101" "01110011100100000001100111" "01110100111010010001101001" "01110110010001000001101011" "01110111101000010001101101" "01111001000000000001101110" "01111010011000010001110000" "01111011110001000001110010" "01111101001010010001110100" "01111110100100000001110110" "01111111111110010001111000" "10000001011001000001111010" "10000010110100010001111100" "10000100010000000001111110" "10000101101100010010000000" "10000111001001000010000010" "10001000100110010010000101" "10001010000100000010000111" "10001011100010010010001001" "10001101000001000010001011" "10001110100000010010001101" "10010000000000000010010000" "10010001100000010010010010" "10010011000001000010010100" "10010100100010010010010110" "10010110000100000010011001" "10010111100110010010011011" "10011001001001000010011101" "10011010101100010010100000" "10011100010000000010100010" "10011101110100010010100101" "10011111011001000010100111" "10100000111110010010101010" "10100010100100000010101100" "10100100001010010010101111" "10100101110001000010110001" "10100111011000010010110100" "10101001000000000010110111" "10101010101000010010111001" "10101100010001000010111100" "10101101111010010010111111" "10101111100100000011000001" "10110001001110010011000100" "10110010111001000011000111" "10110100100100010011001010" "10110110010000000011001101" "10110111111100010011001111" "10111001101001000011010010" "10111011010110010011010101" "10111101000100000011011000" "10111110110010010011011011" "11000000100001000011011110" "11000010010000010011100001" "11000100000000000011100100" "11000101110000010011100111" "11000111100001000011101010" "11001001010010010011101101" "11001011000100000011110001" "11001100110110010011110100" "11001110101001000011110111" "11010000011100010011111010" "11010010010000000011111110" "11010100000100010100000001" "11010101111001000100000100" "11010111101110010100001000" "11011001100100000100001011" "11011011011010010100001110" "11011101010001000100010010" "11011111001000010100010101" "11100001000000000100011001" "11100010111000010100011100" "11100100110001000100100000" "11100110101010010100100011" "11101000100100000100100111" "11101010011110010100101011" "11101100011001000100101110" "11101110010100010100110010" "11110000010000000100110110" "11110010001100010100111010" "11110100001001000100111101" "11110110000110010101000001" "11111000000100000101000101" "11111010000010010101001001" "11111100000001000101001101" "11111110000000010101010001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 103
set hasByteEnable 0
set MemName pow_generic_doublvdy
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 42
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "000000000000000000000000000000000000000000" "000000000000000100000000000000000101010101" "000000000000010000000000000000101010101010" "000000000000100100000000000010010000000000" "000000000001000000000000000101010101010101" "000000000001100100000000001010011010101011" "000000000010010000000000010010000000000001" "000000000011000100000000011100100101011000" "000000000100000000000000101010101010110000" "000000000101000100000000111100110000001000" "000000000110010000000001010011010101100010" "000000000111100100000001101110111010111101" "000000001001000000000010010000000000011011" "000000001010100100000010110111000101111010" "000000001100010000000011100100101011011100" "000000001110000100000100011001010001000001" "000000010000000000000101010101010110101010" "000000010010000100000110011001011100010111" "000000010100010000000111100110000010001000" "000000010110100100001000111011100111111111" "000000011001000000001010011010101101111011" "000000011011100100001100000011110011111101" "000000011110010000001101110111011010000110" "000000100001000100001111110110000000010111" "000000100100000000010010000000000110110000" "000000100111000100010100010110001101010001" "000000101010010000010110111000110011111101" "000000101101100100011001101000011010110100" "000000110001000000011100100101100001110101" "000000110100100100011111110000101001000011" "000000111000010000100011001010010000011110" "000000111100000100100110110010111000000111" "000001000000000000101010101011000000000000" "000001000100000100101110110011001000001000" "000001001000010000110011001011110000100001" "000001001100100100110111110101011001001100" "000001010001000000111100110000100010001011" "000001010101100101000001111101101011011101" "000001011010010001000111011101010101000110" "000001011111000101001101001111111111000100" "000001100100000001010011010110001001011011" "000001101001000101011001110000010100001010" "000001101110010001100000011110111111010100" "000001110011100101100111100010101010111001" "000001111001000001101110111011110110111011" "000001111110100101110110101011000011011100" "000010000100010001111110110000110000011100" "000010001010000110000111001101011101111101" "000010010000000010010000000001101100000001" "000010010110000110011001001101111010101000" "000010011100010010100010110010101001110101" "000010100010100110101100110000011001101010" "000010101001000010110111000111101010000111" "000010101111100111000001111000111011001110" "000010110110010011001101000100101101000001" "000010111101000111011000101011011111100010" "000011000100000011100100101101110010110010" "000011001011000111110001001100000110110011" "000011010010010011111110000110111011100110" "000011011001101000001011011110110001001111" "000011100001000100011001010100000111101110" "000011101000101000100111100111011111000101" "000011110000010100110110011001010111010110" "000011111000001001000101101010010000100011" "000100000000000101010101011010101010101110" "000100001000001001100101101011000101111010" "000100010000010101110110011100000010000111" "000100011000101010000111101101111111011001" "000100100001000110011001100001011101110000" "000100101001101010101011110110111101010000" "000100110010010110111110101110111101111011" "000100111011001011010010001001111111110001" "000101000100000111100110001000100010110111" "000101001101001011111010101011000111001110" "000101010110011000001111110010001100111000" "000101011111101100100101011110010011111000" "000101101001001000111011101111111100001111" "000101110010101101010010100111100110000001" "000101111100011001101010000101110001010000" "000110000110001110000010001010111101111101" "000110010000001010011010110111101100001101" "000110011010001110110100001100011100000000" "000110100100011011001110001001101101011010" "000110101110101111101000110000000000011101" "000110111001001100000011111111110101001011" "000111000011110000011111111001101011101000" "000111001110011100111100011110000011110110" "000111011001010001011001101101011101110111" "000111100100001101110111101000011001101111" "000111101111010010010110001111010111100000" "000111111010011110110101100010110111001101" "001000000101110011010101100011011000111000" "001000010001001111110110010001011100100101" "001000011100110100010111101101100010010110" "001000101000100000111001111000001010001110" "001000110100010101011100110001110100010000" "001001000000010010000000011011000000100000" "001001001100010110100100110100001110111111" "001001011000100011001001111101111111110010" "001001100100110111101111111000110010111011" "001001110001010100010110100101001000011101" "001001111101111000111110000011100000011011" "001010001010100101100110010100011010111001" "001010010111011010001111011000010111111010" "001010100100010110111001001111110111100000" "001010110001011011100011111011011001101111" "001010111110101000001111011011011110101011" "001011001011111100111011110000100110010110" "001011011001011001101000111011010000110101" "001011100110111110010110111011111110001010" "001011110100101011000101110011001110011000" "001100000010011111110101100001100001100100" "001100010000011100100110000111010111110000" "001100011110100001010111100101010001000001" "001100101100101110001001111011101101011001" "001100111011000010111101001011001100111100" "001101001001011111110001010100001111101110" "001101011000000100100110010111010101110010" "001101100110110001011100010100111111001101" "001101110101100110010011001101101100000001" "001110000100100011001011000001111100010010" "001110010011101000000011110010010000000101" "001110100010110100111101011111000111011101" "001110110010001001111000001001000010011101" "001111000001100110110011110000100001001010" "001111010001001011110000010110000011100111" "001111100000111000101101111010001001111000" "001111110000101101101100011101010100000010" "010000000000101010101100000000000010001000" "010000010000101111101100100010110100001110" "010000100000111100101110000110001010011000" "010000110001010001110000101010100100101011" "010001000001101110110100010000100011001010" "010001010010010011111000111000100101111001" "010001100011000000111110100011001100111101" "010001110011110110000101010000111000011010" "010010000100110011001101000010001000010011" "010010010101111000010101110111011100101110" "010010100111000101011111110001010101101110" "010010111000011010101010110000010011011000" "010011001001110111110110110100110101110000" "010011011011011101000011111111011100111011" "010011101101001010010010010000101000111100" "010011111110111111100001101000111001111001" "010100010000111100110010001000101111110110" "010100100011000010000011110000101010110110" "010100110101001111010110100001001011000000" "010101000111100100101010011010110000010111" "010101011010000001111111011101111010111111" "010101101100100111010101101011001010111111" "010101111111010100101101000011000000011001" "010110010010001010000101100101111011010011" "010110100101000111011111010100011011110010" "010110111000001100111010001111000001111010" "010111001011011010010110010110001101110000" "010111011110101111110011101010011111011001" "010111110010001101010010001100010110111010" "011000000101110010110001111100010100010111" "011000011001100000010010111010110111110110" "011000101101010101110101001000100001011011" "011001000001010011011000100101110001001011" "011001010101011000111101010011000111001100" "011001101001100110100011010001000011100010" "011001111101111100001010100000000110010010" "011010010010011001110011000000101111100010" "011010100110111111011100110011011111010111" "011010111011101101000111111000110101110101" "011011010000100010110100010001010011000010" "011011100101100000100001111101010111000100" "011011111010100110010000111101100001111110" "011100001111110100000001010010010011111000" "011100100101001001110010111100001100110101" "011100111010100111100101111011101100111100" "011101010000001101011010010001010100010001" "011101100101111011001111111101100010111010" "011101111011110001000111000000111000111101" "011110010001101110111111011011110110011111" "011110100111110100111001001110111011100101" "011110111110000010110100011010101000010101" "011111010100011000110000111111011100110101" "011111101010110110101110111101111001001010" "100000000001011100101110010110011101011001" "100000011000001010101111001001101001101001" "100000101111000000110001010111111101111111" "100001000101111110110101000001111010100001" "100001011101000100111010000111111111010100" "100001110100010011000000101010101100011110" "100010001011101001001000101010100010000110" "100010100011000111010010001000000000010000" "100010111010101101011101000011100111000011" "100011010010011011101001011101110110100101" "100011101010010001110111010111001110111100" "100100000010010000000110110000010000001101" "100100011010010110010111101001011010011110" "100100110010100100101010000011001101110111" "100101001010111010111101111110001010011100" "100101100011011001010011011010110000010011" "100101111011111111101010011001011111100100" "100110010100101110000010111010111000010011" "100110101101100100011100111111011010101000" "100111000110100010111000100111100110101000" "100111011111101001010101110011111100011001" "100111111000110111110100100100111100000011" "101000010010001110010100111011000101101011" "101000101011101100110110110110111001010111" "101001000101010011011010011000110111001110" "101001011111000001111111100001011111010111" "101001111000111000100110010001010001110111" "101010010010110111001110101000101110110110" "101010101100111101111000101000010110011001" "101011000111001100100100010000101000101000" "101011100001100011010001100010000101101000" "101011111100000010000000011101001101100001" "101100010110101000110001000010100000011001" "101100110001010111100011010010011110010110" "101101001100001110010111001101100111100000" "101101100111001101001100110100011011111101" "101110000010010100000100000111011011110100" "101110011101100010111101000111000111001011" "101110111000111001110111110011111110001001" "101111010100011000110100001110100000110110" "101111101111111111110010010111001111011000" "110000001011101110110010001110101001110110" "110000100111100101110011110101010000010111" "110001000011100100110111001011100011000010" "110001011111101011111100010010000001111101" "110001111011111011000011001001001101010001" "110010011000010010001011110001100101000100" "110010110100110001010110001011101001011100" "110011010001011000100010010111111010100010" "110011101110000111110000010110111000011100" "110100001010111111000000001001000011010010" "110100100111111110010001101110111011001010" "110101000101000101100101001001000000001101" "110101100010010100111010010111110010100001" "110101111111101100010001011011110010001101" "110110011101001011101010010101011111011001" "110110111010110011000101000101011010001101" "110111011000100010100001101100000010101111" "110111110110011010000000001001111001000111" "111000010100011001100000011111011101011101" "111000110010100001000010101101001111111001" "111001010000110000100110110011110000100000" "111001101111001000001100110011011111011100" "111010001101100111110100101100111100110100" "111010101100001111011110100000101000101111" "111011001010111111001010001111000011010101" "111011101001110110110111111000101100101110" "111100001000110110100111011110000101000010" "111100100111111110011000111111101100010111" "111101000111001110001100011110000010110111" "111101100110100110000001111001101000101000" "111110000110000101111001010010111101110011" "111110100101101101110010101010100010100000" "111111000101011101101110000000110110110110" "111111100101010101101011010110011010111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name base_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_r \
    op interface \
    ports { base_r { I 64 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 64 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


