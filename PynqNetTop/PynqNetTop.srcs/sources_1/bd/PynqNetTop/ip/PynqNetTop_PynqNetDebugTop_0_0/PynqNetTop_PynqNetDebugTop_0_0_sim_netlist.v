// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Oct  7 12:08:31 2019
// Host        : Laptop running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/benjamin/PynqNet/PynqNetTop/PynqNetTop.srcs/sources_1/bd/PynqNetTop/ip/PynqNetTop_PynqNetDebugTop_0_0/PynqNetTop_PynqNetDebugTop_0_0_sim_netlist.v
// Design      : PynqNetTop_PynqNetDebugTop_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PynqNetTop_PynqNetDebugTop_0_0,PynqNetDebugTop,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "PynqNetDebugTop,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module PynqNetTop_PynqNetDebugTop_0_0
   (clk_i,
    reset_i,
    out_o);
  input clk_i;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_i RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_i, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_i;
  output out_o;

  wire clk_i;
  wire out_o;
  wire reset_i;

  PynqNetTop_PynqNetDebugTop_0_0_PynqNetDebugTop U0
       (.clk_i(clk_i),
        .out_o(out_o),
        .reset_i(reset_i));
endmodule

(* ORIG_REF_NAME = "PynqNetDebugTop" *) 
module PynqNetTop_PynqNetDebugTop_0_0_PynqNetDebugTop
   (out_o,
    reset_i,
    clk_i);
  output out_o;
  input reset_i;
  input clk_i;

  wire clk_i;
  wire [8:0]count_reg;
  wire out_o;
  wire out_o_i_1_n_0;
  wire out_o_i_2_n_0;
  wire out_o_i_3_n_0;
  wire out_o_i_4_n_0;
  wire out_o_i_5_n_0;
  wire [8:0]p_0_in;
  wire reset_i;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[5]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .I4(count_reg[2]),
        .I5(count_reg[4]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \count[6]_i_1 
       (.I0(count_reg[6]),
        .I1(out_o_i_4_n_0),
        .I2(count_reg[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[7]_i_1 
       (.I0(count_reg[7]),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(out_o_i_4_n_0),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[8]_i_1 
       (.I0(count_reg[8]),
        .I1(out_o_i_4_n_0),
        .I2(count_reg[6]),
        .I3(count_reg[5]),
        .I4(count_reg[7]),
        .O(p_0_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[0]),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[2]),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[3]),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[4]),
        .Q(count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[5]),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[6]),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[7]),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(p_0_in[8]),
        .Q(count_reg[8]));
  LUT6 #(
    .INIT(64'h00C0222200002222)) 
    out_o_i_1
       (.I0(out_o_i_3_n_0),
        .I1(count_reg[8]),
        .I2(out_o_i_4_n_0),
        .I3(out_o_i_5_n_0),
        .I4(count_reg[7]),
        .I5(out_o),
        .O(out_o_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_o_i_2
       (.I0(reset_i),
        .O(out_o_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7777777F)) 
    out_o_i_3
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(out_o_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    out_o_i_4
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(out_o_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    out_o_i_5
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .O(out_o_i_5_n_0));
  FDCE out_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(out_o_i_2_n_0),
        .D(out_o_i_1_n_0),
        .Q(out_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
