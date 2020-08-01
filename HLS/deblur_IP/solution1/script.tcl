############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project deblur_IP
set_top WienerDeblur
add_files WienerDeblur.cpp
add_files -tb WienerDeblur_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
source "./deblur_IP/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
