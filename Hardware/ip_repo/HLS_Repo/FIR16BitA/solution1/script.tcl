############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FIR16BitA
set_top FIR16BitA
add_files FIR16BitA/FIR16BitA.c
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -display_name FIR16BitA -format ip_catalog -rtl vhdl -vendor Hallo
#source "./FIR16BitA/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow impl -rtl vhdl -format ip_catalog -vendor "Hallo" -display_name "FIR16BitA"
