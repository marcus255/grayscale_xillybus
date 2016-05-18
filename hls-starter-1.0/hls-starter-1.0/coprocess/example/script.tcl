############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project coprocess
set_top xillybus_wrapper
add_files coprocess/example/src/xilly_debug.c
add_files coprocess/example/src/main.c
open_solution "example"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_interface -all ap_fifo -expose_global
source "./coprocess/example/directives.tcl"
#csim_design
csynth_design
#cosim_design -tool modelsim
export_design -format pcore -version "1.00.a" -use_netlist none
