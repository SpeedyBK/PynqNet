-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Oct  7 12:08:31 2019
-- Host        : Laptop running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/benjamin/PynqNet/PynqNetTop/PynqNetTop.srcs/sources_1/bd/PynqNetTop/ip/PynqNetTop_PynqNetDebugTop_0_0/PynqNetTop_PynqNetDebugTop_0_0_stub.vhdl
-- Design      : PynqNetTop_PynqNetDebugTop_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PynqNetTop_PynqNetDebugTop_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    out_o : out STD_LOGIC
  );

end PynqNetTop_PynqNetDebugTop_0_0;

architecture stub of PynqNetTop_PynqNetDebugTop_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,reset_i,out_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PynqNetDebugTop,Vivado 2019.1";
begin
end;
