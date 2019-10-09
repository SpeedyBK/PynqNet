// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct  7 12:08:31 2019
// Host        : Laptop running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/benjamin/PynqNet/PynqNetTop/PynqNetTop.srcs/sources_1/bd/PynqNetTop/ip/PynqNetTop_PynqNetDebugTop_0_0/PynqNetTop_PynqNetDebugTop_0_0_stub.v
// Design      : PynqNetTop_PynqNetDebugTop_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PynqNetDebugTop,Vivado 2019.1" *)
module PynqNetTop_PynqNetDebugTop_0_0(clk_i, reset_i, out_o)
/* synthesis syn_black_box black_box_pad_pin="clk_i,reset_i,out_o" */;
  input clk_i;
  input reset_i;
  output out_o;
endmodule
