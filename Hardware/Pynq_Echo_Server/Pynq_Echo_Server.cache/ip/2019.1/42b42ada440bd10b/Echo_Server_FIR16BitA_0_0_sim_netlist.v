// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Apr 30 23:53:17 2020
// Host        : Laptop running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Echo_Server_FIR16BitA_0_0_sim_netlist.v
// Design      : Echo_Server_FIR16BitA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Echo_Server_FIR16BitA_0_0,FIR16BitA,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "FIR16BitA,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_BUS_A_AWADDR,
    s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_AWREADY,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_WREADY,
    s_axi_BUS_A_BRESP,
    s_axi_BUS_A_BVALID,
    s_axi_BUS_A_BREADY,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_ARREADY,
    s_axi_BUS_A_RDATA,
    s_axi_BUS_A_RRESP,
    s_axi_BUS_A_RVALID,
    s_axi_BUS_A_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Echo_Server_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_BUS_A_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID" *) input s_axi_BUS_A_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY" *) output s_axi_BUS_A_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA" *) input [31:0]s_axi_BUS_A_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB" *) input [3:0]s_axi_BUS_A_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID" *) input s_axi_BUS_A_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY" *) output s_axi_BUS_A_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP" *) output [1:0]s_axi_BUS_A_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID" *) output s_axi_BUS_A_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY" *) input s_axi_BUS_A_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR" *) input [5:0]s_axi_BUS_A_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID" *) input s_axi_BUS_A_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY" *) output s_axi_BUS_A_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA" *) output [31:0]s_axi_BUS_A_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP" *) output [1:0]s_axi_BUS_A_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID" *) output s_axi_BUS_A_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY" *) input s_axi_BUS_A_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Echo_Server_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [5:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARREADY;
  wire s_axi_BUS_A_ARVALID;
  wire [5:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWREADY;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire [1:0]s_axi_BUS_A_BRESP;
  wire s_axi_BUS_A_BVALID;
  wire [31:0]s_axi_BUS_A_RDATA;
  wire s_axi_BUS_A_RREADY;
  wire [1:0]s_axi_BUS_A_RRESP;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire s_axi_BUS_A_WREADY;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;

  (* C_S_AXI_BUS_A_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_BUS_A_DATA_WIDTH = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR),
        .s_axi_BUS_A_ARREADY(s_axi_BUS_A_ARREADY),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID),
        .s_axi_BUS_A_AWADDR(s_axi_BUS_A_AWADDR),
        .s_axi_BUS_A_AWREADY(s_axi_BUS_A_AWREADY),
        .s_axi_BUS_A_AWVALID(s_axi_BUS_A_AWVALID),
        .s_axi_BUS_A_BREADY(s_axi_BUS_A_BREADY),
        .s_axi_BUS_A_BRESP(s_axi_BUS_A_BRESP),
        .s_axi_BUS_A_BVALID(s_axi_BUS_A_BVALID),
        .s_axi_BUS_A_RDATA(s_axi_BUS_A_RDATA),
        .s_axi_BUS_A_RREADY(s_axi_BUS_A_RREADY),
        .s_axi_BUS_A_RRESP(s_axi_BUS_A_RRESP),
        .s_axi_BUS_A_RVALID(s_axi_BUS_A_RVALID),
        .s_axi_BUS_A_WDATA(s_axi_BUS_A_WDATA),
        .s_axi_BUS_A_WREADY(s_axi_BUS_A_WREADY),
        .s_axi_BUS_A_WSTRB(s_axi_BUS_A_WSTRB),
        .s_axi_BUS_A_WVALID(s_axi_BUS_A_WVALID));
endmodule

(* C_S_AXI_BUS_A_ADDR_WIDTH = "6" *) (* C_S_AXI_BUS_A_DATA_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA
   (ap_clk,
    ap_rst_n,
    s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_AWREADY,
    s_axi_BUS_A_AWADDR,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_WREADY,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_ARVALID,
    s_axi_BUS_A_ARREADY,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_RVALID,
    s_axi_BUS_A_RREADY,
    s_axi_BUS_A_RDATA,
    s_axi_BUS_A_RRESP,
    s_axi_BUS_A_BVALID,
    s_axi_BUS_A_BREADY,
    s_axi_BUS_A_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_BUS_A_AWVALID;
  output s_axi_BUS_A_AWREADY;
  input [5:0]s_axi_BUS_A_AWADDR;
  input s_axi_BUS_A_WVALID;
  output s_axi_BUS_A_WREADY;
  input [31:0]s_axi_BUS_A_WDATA;
  input [3:0]s_axi_BUS_A_WSTRB;
  input s_axi_BUS_A_ARVALID;
  output s_axi_BUS_A_ARREADY;
  input [5:0]s_axi_BUS_A_ARADDR;
  output s_axi_BUS_A_RVALID;
  input s_axi_BUS_A_RREADY;
  output [31:0]s_axi_BUS_A_RDATA;
  output [1:0]s_axi_BUS_A_RRESP;
  output s_axi_BUS_A_BVALID;
  input s_axi_BUS_A_BREADY;
  output [1:0]s_axi_BUS_A_BRESP;
  output interrupt;

  wire \<const0> ;
  wire ARESET;
  wire FIR16BitA_BUS_A_s_axi_U_n_105;
  wire FIR16BitA_BUS_A_s_axi_U_n_108;
  wire [31:0]a;
  wire [31:0]a_read_reg_51;
  wire [31:0]add_ln11_fu_45_p2;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire [1:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_rst_n;
  wire [31:0]c_0_data_reg;
  wire [31:0]c_1_data_reg;
  wire \c_1_data_reg[11]_i_2_n_0 ;
  wire \c_1_data_reg[11]_i_3_n_0 ;
  wire \c_1_data_reg[11]_i_4_n_0 ;
  wire \c_1_data_reg[11]_i_5_n_0 ;
  wire \c_1_data_reg[15]_i_2_n_0 ;
  wire \c_1_data_reg[15]_i_3_n_0 ;
  wire \c_1_data_reg[15]_i_4_n_0 ;
  wire \c_1_data_reg[15]_i_5_n_0 ;
  wire \c_1_data_reg[19]_i_2_n_0 ;
  wire \c_1_data_reg[19]_i_3_n_0 ;
  wire \c_1_data_reg[19]_i_4_n_0 ;
  wire \c_1_data_reg[19]_i_5_n_0 ;
  wire \c_1_data_reg[23]_i_2_n_0 ;
  wire \c_1_data_reg[23]_i_3_n_0 ;
  wire \c_1_data_reg[23]_i_4_n_0 ;
  wire \c_1_data_reg[23]_i_5_n_0 ;
  wire \c_1_data_reg[27]_i_2_n_0 ;
  wire \c_1_data_reg[27]_i_3_n_0 ;
  wire \c_1_data_reg[27]_i_4_n_0 ;
  wire \c_1_data_reg[27]_i_5_n_0 ;
  wire \c_1_data_reg[31]_i_3_n_0 ;
  wire \c_1_data_reg[31]_i_4_n_0 ;
  wire \c_1_data_reg[31]_i_5_n_0 ;
  wire \c_1_data_reg[31]_i_6_n_0 ;
  wire \c_1_data_reg[3]_i_2_n_0 ;
  wire \c_1_data_reg[3]_i_3_n_0 ;
  wire \c_1_data_reg[3]_i_4_n_0 ;
  wire \c_1_data_reg[3]_i_5_n_0 ;
  wire \c_1_data_reg[7]_i_2_n_0 ;
  wire \c_1_data_reg[7]_i_3_n_0 ;
  wire \c_1_data_reg[7]_i_4_n_0 ;
  wire \c_1_data_reg[7]_i_5_n_0 ;
  wire \c_1_data_reg_reg[11]_i_1_n_0 ;
  wire \c_1_data_reg_reg[11]_i_1_n_1 ;
  wire \c_1_data_reg_reg[11]_i_1_n_2 ;
  wire \c_1_data_reg_reg[11]_i_1_n_3 ;
  wire \c_1_data_reg_reg[15]_i_1_n_0 ;
  wire \c_1_data_reg_reg[15]_i_1_n_1 ;
  wire \c_1_data_reg_reg[15]_i_1_n_2 ;
  wire \c_1_data_reg_reg[15]_i_1_n_3 ;
  wire \c_1_data_reg_reg[19]_i_1_n_0 ;
  wire \c_1_data_reg_reg[19]_i_1_n_1 ;
  wire \c_1_data_reg_reg[19]_i_1_n_2 ;
  wire \c_1_data_reg_reg[19]_i_1_n_3 ;
  wire \c_1_data_reg_reg[23]_i_1_n_0 ;
  wire \c_1_data_reg_reg[23]_i_1_n_1 ;
  wire \c_1_data_reg_reg[23]_i_1_n_2 ;
  wire \c_1_data_reg_reg[23]_i_1_n_3 ;
  wire \c_1_data_reg_reg[27]_i_1_n_0 ;
  wire \c_1_data_reg_reg[27]_i_1_n_1 ;
  wire \c_1_data_reg_reg[27]_i_1_n_2 ;
  wire \c_1_data_reg_reg[27]_i_1_n_3 ;
  wire \c_1_data_reg_reg[31]_i_2_n_1 ;
  wire \c_1_data_reg_reg[31]_i_2_n_2 ;
  wire \c_1_data_reg_reg[31]_i_2_n_3 ;
  wire \c_1_data_reg_reg[3]_i_1_n_0 ;
  wire \c_1_data_reg_reg[3]_i_1_n_1 ;
  wire \c_1_data_reg_reg[3]_i_1_n_2 ;
  wire \c_1_data_reg_reg[3]_i_1_n_3 ;
  wire \c_1_data_reg_reg[7]_i_1_n_0 ;
  wire \c_1_data_reg_reg[7]_i_1_n_1 ;
  wire \c_1_data_reg_reg[7]_i_1_n_2 ;
  wire \c_1_data_reg_reg[7]_i_1_n_3 ;
  wire c_1_vld_reg;
  wire c_1_vld_reg2;
  wire [31:0]c_i;
  wire interrupt;
  wire [5:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARREADY;
  wire s_axi_BUS_A_ARVALID;
  wire [5:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWREADY;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [31:0]s_axi_BUS_A_RDATA;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire s_axi_BUS_A_WREADY;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire [3:3]\NLW_c_1_data_reg_reg[31]_i_2_CO_UNCONNECTED ;

  assign s_axi_BUS_A_BRESP[1] = \<const0> ;
  assign s_axi_BUS_A_BRESP[0] = \<const0> ;
  assign s_axi_BUS_A_RRESP[1] = \<const0> ;
  assign s_axi_BUS_A_RRESP[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA_BUS_A_s_axi FIR16BitA_BUS_A_s_axi_U
       (.D(ap_NS_fsm),
        .E(c_1_vld_reg),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_BUS_A_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_BUS_A_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_BUS_A_WREADY),
        .Q({ap_done,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(ARESET),
        .\ap_CS_fsm_reg[1] (FIR16BitA_BUS_A_s_axi_U_n_108),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .c_1_vld_reg_reg(FIR16BitA_BUS_A_s_axi_U_n_105),
        .\int_a_reg[31]_0 (a),
        .int_ap_start_reg_0(ap_NS_fsm1),
        .int_ap_start_reg_1(c_1_vld_reg2),
        .\int_c_i_reg[31]_0 (c_i),
        .\int_c_o_reg[31]_0 (c_1_data_reg),
        .interrupt(interrupt),
        .s_axi_BUS_A_ARADDR(s_axi_BUS_A_ARADDR),
        .s_axi_BUS_A_ARVALID(s_axi_BUS_A_ARVALID),
        .s_axi_BUS_A_AWADDR(s_axi_BUS_A_AWADDR),
        .s_axi_BUS_A_AWVALID(s_axi_BUS_A_AWVALID),
        .s_axi_BUS_A_BREADY(s_axi_BUS_A_BREADY),
        .s_axi_BUS_A_BVALID(s_axi_BUS_A_BVALID),
        .s_axi_BUS_A_RDATA(s_axi_BUS_A_RDATA),
        .s_axi_BUS_A_RREADY(s_axi_BUS_A_RREADY),
        .s_axi_BUS_A_RVALID(s_axi_BUS_A_RVALID),
        .s_axi_BUS_A_WDATA(s_axi_BUS_A_WDATA),
        .s_axi_BUS_A_WSTRB(s_axi_BUS_A_WSTRB),
        .s_axi_BUS_A_WVALID(s_axi_BUS_A_WVALID));
  GND GND
       (.G(\<const0> ));
  FDRE \a_read_reg_51_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[0]),
        .Q(a_read_reg_51[0]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[10]),
        .Q(a_read_reg_51[10]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[11]),
        .Q(a_read_reg_51[11]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[12]),
        .Q(a_read_reg_51[12]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[13]),
        .Q(a_read_reg_51[13]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[14]),
        .Q(a_read_reg_51[14]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[15]),
        .Q(a_read_reg_51[15]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[16]),
        .Q(a_read_reg_51[16]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[17]),
        .Q(a_read_reg_51[17]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[18]),
        .Q(a_read_reg_51[18]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[19]),
        .Q(a_read_reg_51[19]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[1]),
        .Q(a_read_reg_51[1]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[20]),
        .Q(a_read_reg_51[20]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[21]),
        .Q(a_read_reg_51[21]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[22]),
        .Q(a_read_reg_51[22]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[23]),
        .Q(a_read_reg_51[23]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[24] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[24]),
        .Q(a_read_reg_51[24]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[25] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[25]),
        .Q(a_read_reg_51[25]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[26] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[26]),
        .Q(a_read_reg_51[26]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[27] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[27]),
        .Q(a_read_reg_51[27]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[28] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[28]),
        .Q(a_read_reg_51[28]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[29] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[29]),
        .Q(a_read_reg_51[29]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[2]),
        .Q(a_read_reg_51[2]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[30] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[30]),
        .Q(a_read_reg_51[30]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[31] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[31]),
        .Q(a_read_reg_51[31]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[3]),
        .Q(a_read_reg_51[3]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[4]),
        .Q(a_read_reg_51[4]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[5]),
        .Q(a_read_reg_51[5]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[6]),
        .Q(a_read_reg_51[6]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[7]),
        .Q(a_read_reg_51[7]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[8]),
        .Q(a_read_reg_51[8]),
        .R(1'b0));
  FDRE \a_read_reg_51_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(a[9]),
        .Q(a_read_reg_51[9]),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ARESET));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state2),
        .Q(ap_done),
        .R(ARESET));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[0]),
        .Q(c_0_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[10] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[10]),
        .Q(c_0_data_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[11] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[11]),
        .Q(c_0_data_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[12] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[12]),
        .Q(c_0_data_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[13] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[13]),
        .Q(c_0_data_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[14] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[14]),
        .Q(c_0_data_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[15] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[15]),
        .Q(c_0_data_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[16] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[16]),
        .Q(c_0_data_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[17] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[17]),
        .Q(c_0_data_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[18] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[18]),
        .Q(c_0_data_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[19] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[19]),
        .Q(c_0_data_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[1]),
        .Q(c_0_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[20] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[20]),
        .Q(c_0_data_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[21] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[21]),
        .Q(c_0_data_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[22] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[22]),
        .Q(c_0_data_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[23] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[23]),
        .Q(c_0_data_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[24] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[24]),
        .Q(c_0_data_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[25] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[25]),
        .Q(c_0_data_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[26] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[26]),
        .Q(c_0_data_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[27] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[27]),
        .Q(c_0_data_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[28] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[28]),
        .Q(c_0_data_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[29] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[29]),
        .Q(c_0_data_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[2]),
        .Q(c_0_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[30] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[30]),
        .Q(c_0_data_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[31] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[31]),
        .Q(c_0_data_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[3]),
        .Q(c_0_data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[4]),
        .Q(c_0_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[5]),
        .Q(c_0_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[6]),
        .Q(c_0_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[7]),
        .Q(c_0_data_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[8]),
        .Q(c_0_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_0_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(c_1_vld_reg2),
        .D(c_i[9]),
        .Q(c_0_data_reg[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[11]_i_2 
       (.I0(c_0_data_reg[11]),
        .I1(a_read_reg_51[11]),
        .O(\c_1_data_reg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[11]_i_3 
       (.I0(c_0_data_reg[10]),
        .I1(a_read_reg_51[10]),
        .O(\c_1_data_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[11]_i_4 
       (.I0(c_0_data_reg[9]),
        .I1(a_read_reg_51[9]),
        .O(\c_1_data_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[11]_i_5 
       (.I0(c_0_data_reg[8]),
        .I1(a_read_reg_51[8]),
        .O(\c_1_data_reg[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[15]_i_2 
       (.I0(c_0_data_reg[15]),
        .I1(a_read_reg_51[15]),
        .O(\c_1_data_reg[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[15]_i_3 
       (.I0(c_0_data_reg[14]),
        .I1(a_read_reg_51[14]),
        .O(\c_1_data_reg[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[15]_i_4 
       (.I0(c_0_data_reg[13]),
        .I1(a_read_reg_51[13]),
        .O(\c_1_data_reg[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[15]_i_5 
       (.I0(c_0_data_reg[12]),
        .I1(a_read_reg_51[12]),
        .O(\c_1_data_reg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[19]_i_2 
       (.I0(c_0_data_reg[19]),
        .I1(a_read_reg_51[19]),
        .O(\c_1_data_reg[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[19]_i_3 
       (.I0(c_0_data_reg[18]),
        .I1(a_read_reg_51[18]),
        .O(\c_1_data_reg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[19]_i_4 
       (.I0(c_0_data_reg[17]),
        .I1(a_read_reg_51[17]),
        .O(\c_1_data_reg[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[19]_i_5 
       (.I0(c_0_data_reg[16]),
        .I1(a_read_reg_51[16]),
        .O(\c_1_data_reg[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[23]_i_2 
       (.I0(c_0_data_reg[23]),
        .I1(a_read_reg_51[23]),
        .O(\c_1_data_reg[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[23]_i_3 
       (.I0(c_0_data_reg[22]),
        .I1(a_read_reg_51[22]),
        .O(\c_1_data_reg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[23]_i_4 
       (.I0(c_0_data_reg[21]),
        .I1(a_read_reg_51[21]),
        .O(\c_1_data_reg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[23]_i_5 
       (.I0(c_0_data_reg[20]),
        .I1(a_read_reg_51[20]),
        .O(\c_1_data_reg[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[27]_i_2 
       (.I0(c_0_data_reg[27]),
        .I1(a_read_reg_51[27]),
        .O(\c_1_data_reg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[27]_i_3 
       (.I0(c_0_data_reg[26]),
        .I1(a_read_reg_51[26]),
        .O(\c_1_data_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[27]_i_4 
       (.I0(c_0_data_reg[25]),
        .I1(a_read_reg_51[25]),
        .O(\c_1_data_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[27]_i_5 
       (.I0(c_0_data_reg[24]),
        .I1(a_read_reg_51[24]),
        .O(\c_1_data_reg[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[31]_i_3 
       (.I0(c_0_data_reg[31]),
        .I1(a_read_reg_51[31]),
        .O(\c_1_data_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[31]_i_4 
       (.I0(c_0_data_reg[30]),
        .I1(a_read_reg_51[30]),
        .O(\c_1_data_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[31]_i_5 
       (.I0(c_0_data_reg[29]),
        .I1(a_read_reg_51[29]),
        .O(\c_1_data_reg[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[31]_i_6 
       (.I0(c_0_data_reg[28]),
        .I1(a_read_reg_51[28]),
        .O(\c_1_data_reg[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[3]_i_2 
       (.I0(c_0_data_reg[3]),
        .I1(a_read_reg_51[3]),
        .O(\c_1_data_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[3]_i_3 
       (.I0(c_0_data_reg[2]),
        .I1(a_read_reg_51[2]),
        .O(\c_1_data_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[3]_i_4 
       (.I0(c_0_data_reg[1]),
        .I1(a_read_reg_51[1]),
        .O(\c_1_data_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[3]_i_5 
       (.I0(c_0_data_reg[0]),
        .I1(a_read_reg_51[0]),
        .O(\c_1_data_reg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[7]_i_2 
       (.I0(c_0_data_reg[7]),
        .I1(a_read_reg_51[7]),
        .O(\c_1_data_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[7]_i_3 
       (.I0(c_0_data_reg[6]),
        .I1(a_read_reg_51[6]),
        .O(\c_1_data_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[7]_i_4 
       (.I0(c_0_data_reg[5]),
        .I1(a_read_reg_51[5]),
        .O(\c_1_data_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c_1_data_reg[7]_i_5 
       (.I0(c_0_data_reg[4]),
        .I1(a_read_reg_51[4]),
        .O(\c_1_data_reg[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[0] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[0]),
        .Q(c_1_data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[10] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[10]),
        .Q(c_1_data_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[11] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[11]),
        .Q(c_1_data_reg[11]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[11]_i_1 
       (.CI(\c_1_data_reg_reg[7]_i_1_n_0 ),
        .CO({\c_1_data_reg_reg[11]_i_1_n_0 ,\c_1_data_reg_reg[11]_i_1_n_1 ,\c_1_data_reg_reg[11]_i_1_n_2 ,\c_1_data_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(c_0_data_reg[11:8]),
        .O(add_ln11_fu_45_p2[11:8]),
        .S({\c_1_data_reg[11]_i_2_n_0 ,\c_1_data_reg[11]_i_3_n_0 ,\c_1_data_reg[11]_i_4_n_0 ,\c_1_data_reg[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[12] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[12]),
        .Q(c_1_data_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[13] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[13]),
        .Q(c_1_data_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[14] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[14]),
        .Q(c_1_data_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[15] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[15]),
        .Q(c_1_data_reg[15]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[15]_i_1 
       (.CI(\c_1_data_reg_reg[11]_i_1_n_0 ),
        .CO({\c_1_data_reg_reg[15]_i_1_n_0 ,\c_1_data_reg_reg[15]_i_1_n_1 ,\c_1_data_reg_reg[15]_i_1_n_2 ,\c_1_data_reg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(c_0_data_reg[15:12]),
        .O(add_ln11_fu_45_p2[15:12]),
        .S({\c_1_data_reg[15]_i_2_n_0 ,\c_1_data_reg[15]_i_3_n_0 ,\c_1_data_reg[15]_i_4_n_0 ,\c_1_data_reg[15]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[16] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[16]),
        .Q(c_1_data_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[17] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[17]),
        .Q(c_1_data_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[18] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[18]),
        .Q(c_1_data_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[19] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[19]),
        .Q(c_1_data_reg[19]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[19]_i_1 
       (.CI(\c_1_data_reg_reg[15]_i_1_n_0 ),
        .CO({\c_1_data_reg_reg[19]_i_1_n_0 ,\c_1_data_reg_reg[19]_i_1_n_1 ,\c_1_data_reg_reg[19]_i_1_n_2 ,\c_1_data_reg_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(c_0_data_reg[19:16]),
        .O(add_ln11_fu_45_p2[19:16]),
        .S({\c_1_data_reg[19]_i_2_n_0 ,\c_1_data_reg[19]_i_3_n_0 ,\c_1_data_reg[19]_i_4_n_0 ,\c_1_data_reg[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[1] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[1]),
        .Q(c_1_data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[20] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[20]),
        .Q(c_1_data_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[21] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[21]),
        .Q(c_1_data_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[22] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[22]),
        .Q(c_1_data_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[23] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[23]),
        .Q(c_1_data_reg[23]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[23]_i_1 
       (.CI(\c_1_data_reg_reg[19]_i_1_n_0 ),
        .CO({\c_1_data_reg_reg[23]_i_1_n_0 ,\c_1_data_reg_reg[23]_i_1_n_1 ,\c_1_data_reg_reg[23]_i_1_n_2 ,\c_1_data_reg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(c_0_data_reg[23:20]),
        .O(add_ln11_fu_45_p2[23:20]),
        .S({\c_1_data_reg[23]_i_2_n_0 ,\c_1_data_reg[23]_i_3_n_0 ,\c_1_data_reg[23]_i_4_n_0 ,\c_1_data_reg[23]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[24] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[24]),
        .Q(c_1_data_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[25] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[25]),
        .Q(c_1_data_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[26] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[26]),
        .Q(c_1_data_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[27] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[27]),
        .Q(c_1_data_reg[27]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[27]_i_1 
       (.CI(\c_1_data_reg_reg[23]_i_1_n_0 ),
        .CO({\c_1_data_reg_reg[27]_i_1_n_0 ,\c_1_data_reg_reg[27]_i_1_n_1 ,\c_1_data_reg_reg[27]_i_1_n_2 ,\c_1_data_reg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(c_0_data_reg[27:24]),
        .O(add_ln11_fu_45_p2[27:24]),
        .S({\c_1_data_reg[27]_i_2_n_0 ,\c_1_data_reg[27]_i_3_n_0 ,\c_1_data_reg[27]_i_4_n_0 ,\c_1_data_reg[27]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[28] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[28]),
        .Q(c_1_data_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[29] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[29]),
        .Q(c_1_data_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[2] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[2]),
        .Q(c_1_data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[30] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[30]),
        .Q(c_1_data_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[31] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[31]),
        .Q(c_1_data_reg[31]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[31]_i_2 
       (.CI(\c_1_data_reg_reg[27]_i_1_n_0 ),
        .CO({\NLW_c_1_data_reg_reg[31]_i_2_CO_UNCONNECTED [3],\c_1_data_reg_reg[31]_i_2_n_1 ,\c_1_data_reg_reg[31]_i_2_n_2 ,\c_1_data_reg_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,c_0_data_reg[30:28]}),
        .O(add_ln11_fu_45_p2[31:28]),
        .S({\c_1_data_reg[31]_i_3_n_0 ,\c_1_data_reg[31]_i_4_n_0 ,\c_1_data_reg[31]_i_5_n_0 ,\c_1_data_reg[31]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[3] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[3]),
        .Q(c_1_data_reg[3]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\c_1_data_reg_reg[3]_i_1_n_0 ,\c_1_data_reg_reg[3]_i_1_n_1 ,\c_1_data_reg_reg[3]_i_1_n_2 ,\c_1_data_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(c_0_data_reg[3:0]),
        .O(add_ln11_fu_45_p2[3:0]),
        .S({\c_1_data_reg[3]_i_2_n_0 ,\c_1_data_reg[3]_i_3_n_0 ,\c_1_data_reg[3]_i_4_n_0 ,\c_1_data_reg[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[4] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[4]),
        .Q(c_1_data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[5] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[5]),
        .Q(c_1_data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[6] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[6]),
        .Q(c_1_data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[7] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[7]),
        .Q(c_1_data_reg[7]),
        .R(1'b0));
  CARRY4 \c_1_data_reg_reg[7]_i_1 
       (.CI(\c_1_data_reg_reg[3]_i_1_n_0 ),
        .CO({\c_1_data_reg_reg[7]_i_1_n_0 ,\c_1_data_reg_reg[7]_i_1_n_1 ,\c_1_data_reg_reg[7]_i_1_n_2 ,\c_1_data_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(c_0_data_reg[7:4]),
        .O(add_ln11_fu_45_p2[7:4]),
        .S({\c_1_data_reg[7]_i_2_n_0 ,\c_1_data_reg[7]_i_3_n_0 ,\c_1_data_reg[7]_i_4_n_0 ,\c_1_data_reg[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[8] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[8]),
        .Q(c_1_data_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \c_1_data_reg_reg[9] 
       (.C(ap_clk),
        .CE(FIR16BitA_BUS_A_s_axi_U_n_108),
        .D(add_ln11_fu_45_p2[9]),
        .Q(c_1_data_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    c_1_vld_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(FIR16BitA_BUS_A_s_axi_U_n_105),
        .Q(c_1_vld_reg),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA_BUS_A_s_axi
   (SR,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_BUS_A_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_BUS_A_RVALID,
    \int_a_reg[31]_0 ,
    \int_c_i_reg[31]_0 ,
    s_axi_BUS_A_RDATA,
    D,
    int_ap_start_reg_0,
    c_1_vld_reg_reg,
    int_ap_start_reg_1,
    interrupt,
    \ap_CS_fsm_reg[1] ,
    ap_clk,
    Q,
    ap_rst_n,
    s_axi_BUS_A_WDATA,
    s_axi_BUS_A_WSTRB,
    s_axi_BUS_A_WVALID,
    s_axi_BUS_A_ARVALID,
    E,
    s_axi_BUS_A_ARADDR,
    s_axi_BUS_A_AWADDR,
    \int_c_o_reg[31]_0 ,
    s_axi_BUS_A_RREADY,
    s_axi_BUS_A_AWVALID,
    s_axi_BUS_A_BREADY);
  output [0:0]SR;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_BUS_A_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_BUS_A_RVALID;
  output [31:0]\int_a_reg[31]_0 ;
  output [31:0]\int_c_i_reg[31]_0 ;
  output [31:0]s_axi_BUS_A_RDATA;
  output [1:0]D;
  output [0:0]int_ap_start_reg_0;
  output c_1_vld_reg_reg;
  output [0:0]int_ap_start_reg_1;
  output interrupt;
  output [0:0]\ap_CS_fsm_reg[1] ;
  input ap_clk;
  input [2:0]Q;
  input ap_rst_n;
  input [31:0]s_axi_BUS_A_WDATA;
  input [3:0]s_axi_BUS_A_WSTRB;
  input s_axi_BUS_A_WVALID;
  input s_axi_BUS_A_ARVALID;
  input [0:0]E;
  input [5:0]s_axi_BUS_A_ARADDR;
  input [5:0]s_axi_BUS_A_AWADDR;
  input [31:0]\int_c_o_reg[31]_0 ;
  input s_axi_BUS_A_RREADY;
  input s_axi_BUS_A_AWVALID;
  input s_axi_BUS_A_BREADY;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire c_1_vld_reg_reg;
  wire [7:1]data0;
  wire \int_a[31]_i_3_n_0 ;
  wire [31:0]\int_a_reg[31]_0 ;
  wire int_ap_done1;
  wire int_ap_done_i_1_n_0;
  wire int_ap_idle_i_1_n_0;
  wire int_ap_start1;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_ap_start_i_4_n_0;
  wire [0:0]int_ap_start_reg_0;
  wire [0:0]int_ap_start_reg_1;
  wire int_auto_restart_i_1_n_0;
  wire \int_c_i[31]_i_3_n_0 ;
  wire [31:0]\int_c_i_reg[31]_0 ;
  wire [31:0]int_c_o;
  wire int_c_o_ap_vld;
  wire int_c_o_ap_vld1;
  wire int_c_o_ap_vld_i_1_n_0;
  wire [31:0]\int_c_o_reg[31]_0 ;
  wire int_gie2;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier9_out;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire interrupt;
  wire [31:0]\or ;
  wire [31:0]or0_out;
  wire p_0_in;
  wire p_0_in13_out;
  wire p_0_in15_out;
  wire p_17_in;
  wire p_1_in;
  wire \rdata_data[0]_i_1_n_0 ;
  wire \rdata_data[0]_i_2_n_0 ;
  wire \rdata_data[0]_i_3_n_0 ;
  wire \rdata_data[0]_i_4_n_0 ;
  wire \rdata_data[10]_i_1_n_0 ;
  wire \rdata_data[11]_i_1_n_0 ;
  wire \rdata_data[12]_i_1_n_0 ;
  wire \rdata_data[13]_i_1_n_0 ;
  wire \rdata_data[14]_i_1_n_0 ;
  wire \rdata_data[15]_i_1_n_0 ;
  wire \rdata_data[16]_i_1_n_0 ;
  wire \rdata_data[17]_i_1_n_0 ;
  wire \rdata_data[18]_i_1_n_0 ;
  wire \rdata_data[19]_i_1_n_0 ;
  wire \rdata_data[1]_i_1_n_0 ;
  wire \rdata_data[1]_i_2_n_0 ;
  wire \rdata_data[1]_i_3_n_0 ;
  wire \rdata_data[1]_i_4_n_0 ;
  wire \rdata_data[1]_i_5_n_0 ;
  wire \rdata_data[20]_i_1_n_0 ;
  wire \rdata_data[21]_i_1_n_0 ;
  wire \rdata_data[22]_i_1_n_0 ;
  wire \rdata_data[23]_i_1_n_0 ;
  wire \rdata_data[24]_i_1_n_0 ;
  wire \rdata_data[25]_i_1_n_0 ;
  wire \rdata_data[26]_i_1_n_0 ;
  wire \rdata_data[27]_i_1_n_0 ;
  wire \rdata_data[28]_i_1_n_0 ;
  wire \rdata_data[29]_i_1_n_0 ;
  wire \rdata_data[2]_i_1_n_0 ;
  wire \rdata_data[2]_i_2_n_0 ;
  wire \rdata_data[30]_i_1_n_0 ;
  wire \rdata_data[31]_i_1_n_0 ;
  wire \rdata_data[31]_i_3_n_0 ;
  wire \rdata_data[3]_i_1_n_0 ;
  wire \rdata_data[3]_i_2_n_0 ;
  wire \rdata_data[4]_i_1_n_0 ;
  wire \rdata_data[5]_i_1_n_0 ;
  wire \rdata_data[6]_i_1_n_0 ;
  wire \rdata_data[7]_i_1_n_0 ;
  wire \rdata_data[7]_i_2_n_0 ;
  wire \rdata_data[8]_i_1_n_0 ;
  wire \rdata_data[9]_i_1_n_0 ;
  wire [2:1]rnext;
  wire [5:0]s_axi_BUS_A_ARADDR;
  wire s_axi_BUS_A_ARVALID;
  wire [5:0]s_axi_BUS_A_AWADDR;
  wire s_axi_BUS_A_AWVALID;
  wire s_axi_BUS_A_BREADY;
  wire s_axi_BUS_A_BVALID;
  wire [31:0]s_axi_BUS_A_RDATA;
  wire s_axi_BUS_A_RREADY;
  wire s_axi_BUS_A_RVALID;
  wire [31:0]s_axi_BUS_A_WDATA;
  wire [3:0]s_axi_BUS_A_WSTRB;
  wire s_axi_BUS_A_WVALID;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_BUS_A_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_BUS_A_RVALID),
        .I3(s_axi_BUS_A_RREADY),
        .O(rnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_BUS_A_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_BUS_A_RVALID),
        .I3(s_axi_BUS_A_RREADY),
        .O(rnext[2]));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[1]),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "rddata:100,rdidle:010,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext[2]),
        .Q(s_axi_BUS_A_RVALID),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(s_axi_BUS_A_BREADY),
        .I1(s_axi_BUS_A_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_BUS_A_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_BUS_A_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_BUS_A_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_BUS_A_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_BUS_A_BREADY),
        .I3(s_axi_BUS_A_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_BUS_A_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_read_reg_51[31]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(int_ap_start_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \c_0_data_reg[31]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(int_ap_start_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \c_1_data_reg[31]_i_1 
       (.I0(Q[1]),
        .I1(ap_start),
        .I2(Q[0]),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC8CC)) 
    c_1_vld_reg_i_1
       (.I0(E),
        .I1(Q[1]),
        .I2(ap_start),
        .I3(Q[0]),
        .O(c_1_vld_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [0]),
        .O(or0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[10]_i_1 
       (.I0(s_axi_BUS_A_WDATA[10]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [10]),
        .O(or0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[11]_i_1 
       (.I0(s_axi_BUS_A_WDATA[11]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [11]),
        .O(or0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[12]_i_1 
       (.I0(s_axi_BUS_A_WDATA[12]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [12]),
        .O(or0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[13]_i_1 
       (.I0(s_axi_BUS_A_WDATA[13]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [13]),
        .O(or0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[14]_i_1 
       (.I0(s_axi_BUS_A_WDATA[14]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [14]),
        .O(or0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[15]_i_1 
       (.I0(s_axi_BUS_A_WDATA[15]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [15]),
        .O(or0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[16]_i_1 
       (.I0(s_axi_BUS_A_WDATA[16]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [16]),
        .O(or0_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[17]_i_1 
       (.I0(s_axi_BUS_A_WDATA[17]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [17]),
        .O(or0_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[18]_i_1 
       (.I0(s_axi_BUS_A_WDATA[18]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [18]),
        .O(or0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[19]_i_1 
       (.I0(s_axi_BUS_A_WDATA[19]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [19]),
        .O(or0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [1]),
        .O(or0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[20]_i_1 
       (.I0(s_axi_BUS_A_WDATA[20]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [20]),
        .O(or0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[21]_i_1 
       (.I0(s_axi_BUS_A_WDATA[21]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [21]),
        .O(or0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[22]_i_1 
       (.I0(s_axi_BUS_A_WDATA[22]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [22]),
        .O(or0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[23]_i_1 
       (.I0(s_axi_BUS_A_WDATA[23]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_a_reg[31]_0 [23]),
        .O(or0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[24]_i_1 
       (.I0(s_axi_BUS_A_WDATA[24]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [24]),
        .O(or0_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[25]_i_1 
       (.I0(s_axi_BUS_A_WDATA[25]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [25]),
        .O(or0_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[26]_i_1 
       (.I0(s_axi_BUS_A_WDATA[26]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [26]),
        .O(or0_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[27]_i_1 
       (.I0(s_axi_BUS_A_WDATA[27]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [27]),
        .O(or0_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[28]_i_1 
       (.I0(s_axi_BUS_A_WDATA[28]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [28]),
        .O(or0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[29]_i_1 
       (.I0(s_axi_BUS_A_WDATA[29]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [29]),
        .O(or0_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[2]_i_1 
       (.I0(s_axi_BUS_A_WDATA[2]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [2]),
        .O(or0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[30]_i_1 
       (.I0(s_axi_BUS_A_WDATA[30]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [30]),
        .O(or0_out[30]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \int_a[31]_i_1 
       (.I0(\int_a[31]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(p_17_in),
        .O(p_0_in15_out));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[31]_i_2 
       (.I0(s_axi_BUS_A_WDATA[31]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_a_reg[31]_0 [31]),
        .O(or0_out[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \int_a[31]_i_3 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .O(\int_a[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_a[31]_i_4 
       (.I0(s_axi_BUS_A_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .O(p_17_in));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[3]_i_1 
       (.I0(s_axi_BUS_A_WDATA[3]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [3]),
        .O(or0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[4]_i_1 
       (.I0(s_axi_BUS_A_WDATA[4]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [4]),
        .O(or0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[5]_i_1 
       (.I0(s_axi_BUS_A_WDATA[5]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [5]),
        .O(or0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[6]_i_1 
       (.I0(s_axi_BUS_A_WDATA[6]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [6]),
        .O(or0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[7]_i_1 
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_a_reg[31]_0 [7]),
        .O(or0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[8]_i_1 
       (.I0(s_axi_BUS_A_WDATA[8]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [8]),
        .O(or0_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[9]_i_1 
       (.I0(s_axi_BUS_A_WDATA[9]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_a_reg[31]_0 [9]),
        .O(or0_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[0]),
        .Q(\int_a_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[10]),
        .Q(\int_a_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[11]),
        .Q(\int_a_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[12]),
        .Q(\int_a_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[13]),
        .Q(\int_a_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[14]),
        .Q(\int_a_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[15]),
        .Q(\int_a_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[16]),
        .Q(\int_a_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[17]),
        .Q(\int_a_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[18]),
        .Q(\int_a_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[19]),
        .Q(\int_a_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[1]),
        .Q(\int_a_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[20]),
        .Q(\int_a_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[21]),
        .Q(\int_a_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[22]),
        .Q(\int_a_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[23]),
        .Q(\int_a_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[24]),
        .Q(\int_a_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[25]),
        .Q(\int_a_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[26]),
        .Q(\int_a_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[27]),
        .Q(\int_a_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[28]),
        .Q(\int_a_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[29]),
        .Q(\int_a_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[2]),
        .Q(\int_a_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[30]),
        .Q(\int_a_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[31]),
        .Q(\int_a_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[3]),
        .Q(\int_a_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[4]),
        .Q(\int_a_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[5]),
        .Q(\int_a_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[6]),
        .Q(\int_a_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[7]),
        .Q(\int_a_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[8]),
        .Q(\int_a_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in15_out),
        .D(or0_out[9]),
        .Q(\int_a_reg[31]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    int_ap_done_i_1
       (.I0(Q[2]),
        .I1(int_ap_done1),
        .I2(s_axi_BUS_A_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(data0[1]),
        .O(int_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    int_ap_done_i_2
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[0]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(s_axi_BUS_A_ARADDR[2]),
        .O(int_ap_done1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(data0[1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(int_ap_idle_i_1_n_0));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_idle_i_1_n_0),
        .Q(data0[2]),
        .R(SR));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(data0[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFBBBF888)) 
    int_ap_start_i_1
       (.I0(data0[7]),
        .I1(Q[2]),
        .I2(int_ap_start1),
        .I3(s_axi_BUS_A_WDATA[0]),
        .I4(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_ap_start_i_2
       (.I0(p_17_in),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(int_ap_start_i_3_n_0),
        .I3(int_ap_start_i_4_n_0),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(int_ap_start1));
  LUT2 #(
    .INIT(4'hE)) 
    int_ap_start_i_3
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[5] ),
        .O(int_ap_start_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    int_ap_start_i_4
       (.I0(\waddr_reg_n_0_[1] ),
        .I1(\waddr_reg_n_0_[0] ),
        .O(int_ap_start_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    int_auto_restart_i_1
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(int_ap_start1),
        .I2(data0[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(data0[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [0]),
        .O(\or [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[10]_i_1 
       (.I0(s_axi_BUS_A_WDATA[10]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [10]),
        .O(\or [10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[11]_i_1 
       (.I0(s_axi_BUS_A_WDATA[11]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [11]),
        .O(\or [11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[12]_i_1 
       (.I0(s_axi_BUS_A_WDATA[12]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [12]),
        .O(\or [12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[13]_i_1 
       (.I0(s_axi_BUS_A_WDATA[13]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [13]),
        .O(\or [13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[14]_i_1 
       (.I0(s_axi_BUS_A_WDATA[14]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [14]),
        .O(\or [14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[15]_i_1 
       (.I0(s_axi_BUS_A_WDATA[15]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [15]),
        .O(\or [15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[16]_i_1 
       (.I0(s_axi_BUS_A_WDATA[16]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [16]),
        .O(\or [16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[17]_i_1 
       (.I0(s_axi_BUS_A_WDATA[17]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [17]),
        .O(\or [17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[18]_i_1 
       (.I0(s_axi_BUS_A_WDATA[18]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [18]),
        .O(\or [18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[19]_i_1 
       (.I0(s_axi_BUS_A_WDATA[19]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [19]),
        .O(\or [19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [1]),
        .O(\or [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[20]_i_1 
       (.I0(s_axi_BUS_A_WDATA[20]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [20]),
        .O(\or [20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[21]_i_1 
       (.I0(s_axi_BUS_A_WDATA[21]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [21]),
        .O(\or [21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[22]_i_1 
       (.I0(s_axi_BUS_A_WDATA[22]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [22]),
        .O(\or [22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[23]_i_1 
       (.I0(s_axi_BUS_A_WDATA[23]),
        .I1(s_axi_BUS_A_WSTRB[2]),
        .I2(\int_c_i_reg[31]_0 [23]),
        .O(\or [23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[24]_i_1 
       (.I0(s_axi_BUS_A_WDATA[24]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [24]),
        .O(\or [24]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[25]_i_1 
       (.I0(s_axi_BUS_A_WDATA[25]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [25]),
        .O(\or [25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[26]_i_1 
       (.I0(s_axi_BUS_A_WDATA[26]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [26]),
        .O(\or [26]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[27]_i_1 
       (.I0(s_axi_BUS_A_WDATA[27]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [27]),
        .O(\or [27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[28]_i_1 
       (.I0(s_axi_BUS_A_WDATA[28]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [28]),
        .O(\or [28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[29]_i_1 
       (.I0(s_axi_BUS_A_WDATA[29]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [29]),
        .O(\or [29]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[2]_i_1 
       (.I0(s_axi_BUS_A_WDATA[2]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [2]),
        .O(\or [2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[30]_i_1 
       (.I0(s_axi_BUS_A_WDATA[30]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [30]),
        .O(\or [30]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \int_c_i[31]_i_1 
       (.I0(\int_c_i[31]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(p_17_in),
        .O(p_0_in13_out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[31]_i_2 
       (.I0(s_axi_BUS_A_WDATA[31]),
        .I1(s_axi_BUS_A_WSTRB[3]),
        .I2(\int_c_i_reg[31]_0 [31]),
        .O(\or [31]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \int_c_i[31]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[2] ),
        .O(\int_c_i[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[3]_i_1 
       (.I0(s_axi_BUS_A_WDATA[3]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [3]),
        .O(\or [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[4]_i_1 
       (.I0(s_axi_BUS_A_WDATA[4]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [4]),
        .O(\or [4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[5]_i_1 
       (.I0(s_axi_BUS_A_WDATA[5]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [5]),
        .O(\or [5]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[6]_i_1 
       (.I0(s_axi_BUS_A_WDATA[6]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [6]),
        .O(\or [6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[7]_i_1 
       (.I0(s_axi_BUS_A_WDATA[7]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(\int_c_i_reg[31]_0 [7]),
        .O(\or [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[8]_i_1 
       (.I0(s_axi_BUS_A_WDATA[8]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [8]),
        .O(\or [8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c_i[9]_i_1 
       (.I0(s_axi_BUS_A_WDATA[9]),
        .I1(s_axi_BUS_A_WSTRB[1]),
        .I2(\int_c_i_reg[31]_0 [9]),
        .O(\or [9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[0] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [0]),
        .Q(\int_c_i_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[10] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [10]),
        .Q(\int_c_i_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[11] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [11]),
        .Q(\int_c_i_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[12] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [12]),
        .Q(\int_c_i_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[13] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [13]),
        .Q(\int_c_i_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[14] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [14]),
        .Q(\int_c_i_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[15] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [15]),
        .Q(\int_c_i_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[16] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [16]),
        .Q(\int_c_i_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[17] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [17]),
        .Q(\int_c_i_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[18] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [18]),
        .Q(\int_c_i_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[19] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [19]),
        .Q(\int_c_i_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[1] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [1]),
        .Q(\int_c_i_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[20] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [20]),
        .Q(\int_c_i_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[21] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [21]),
        .Q(\int_c_i_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[22] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [22]),
        .Q(\int_c_i_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[23] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [23]),
        .Q(\int_c_i_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[24] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [24]),
        .Q(\int_c_i_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[25] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [25]),
        .Q(\int_c_i_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[26] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [26]),
        .Q(\int_c_i_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[27] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [27]),
        .Q(\int_c_i_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[28] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [28]),
        .Q(\int_c_i_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[29] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [29]),
        .Q(\int_c_i_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[2] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [2]),
        .Q(\int_c_i_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[30] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [30]),
        .Q(\int_c_i_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[31] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [31]),
        .Q(\int_c_i_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[3] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [3]),
        .Q(\int_c_i_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[4] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [4]),
        .Q(\int_c_i_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[5] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [5]),
        .Q(\int_c_i_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[6] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [6]),
        .Q(\int_c_i_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[7] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [7]),
        .Q(\int_c_i_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[8] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [8]),
        .Q(\int_c_i_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_i_reg[9] 
       (.C(ap_clk),
        .CE(p_0_in13_out),
        .D(\or [9]),
        .Q(\int_c_i_reg[31]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    int_c_o_ap_vld_i_1
       (.I0(E),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(int_c_o_ap_vld1),
        .I4(int_c_o_ap_vld),
        .O(int_c_o_ap_vld_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    int_c_o_ap_vld_i_2
       (.I0(s_axi_BUS_A_ARADDR[1]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(s_axi_BUS_A_ARADDR[5]),
        .I3(s_axi_BUS_A_ARADDR[2]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(s_axi_BUS_A_ARADDR[0]),
        .O(int_c_o_ap_vld1));
  FDRE int_c_o_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_c_o_ap_vld_i_1_n_0),
        .Q(int_c_o_ap_vld),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [0]),
        .Q(int_c_o[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [10]),
        .Q(int_c_o[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [11]),
        .Q(int_c_o[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [12]),
        .Q(int_c_o[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [13]),
        .Q(int_c_o[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [14]),
        .Q(int_c_o[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [15]),
        .Q(int_c_o[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [16]),
        .Q(int_c_o[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [17]),
        .Q(int_c_o[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [18]),
        .Q(int_c_o[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [19]),
        .Q(int_c_o[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [1]),
        .Q(int_c_o[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [20]),
        .Q(int_c_o[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [21]),
        .Q(int_c_o[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [22]),
        .Q(int_c_o[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [23]),
        .Q(int_c_o[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [24]),
        .Q(int_c_o[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [25]),
        .Q(int_c_o[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [26]),
        .Q(int_c_o[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [27]),
        .Q(int_c_o[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [28]),
        .Q(int_c_o[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [29]),
        .Q(int_c_o[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [2]),
        .Q(int_c_o[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [30]),
        .Q(int_c_o[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [31]),
        .Q(int_c_o[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [3]),
        .Q(int_c_o[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [4]),
        .Q(int_c_o[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [5]),
        .Q(int_c_o[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [6]),
        .Q(int_c_o[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [7]),
        .Q(int_c_o[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [8]),
        .Q(int_c_o[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_o_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\int_c_o_reg[31]_0 [9]),
        .Q(int_c_o[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    int_gie_i_1
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(s_axi_BUS_A_WSTRB[0]),
        .I2(int_gie2),
        .I3(s_axi_BUS_A_WVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[3] ),
        .I5(\waddr_reg_n_0_[0] ),
        .O(int_gie2));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(int_ier9_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(int_ier9_out),
        .I2(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_BUS_A_WSTRB[0]),
        .I1(int_ap_start_i_3_n_0),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_c_i[31]_i_3_n_0 ),
        .I5(p_17_in),
        .O(int_ier9_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_BUS_A_WDATA[0]),
        .I1(int_isr6_out),
        .I2(Q[2]),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_BUS_A_WSTRB[0]),
        .I1(int_ap_start_i_3_n_0),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(int_ap_start_i_4_n_0),
        .I5(p_17_in),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_BUS_A_WDATA[1]),
        .I1(int_isr6_out),
        .I2(p_0_in),
        .I3(Q[2]),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(p_1_in),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(int_gie_reg_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata_data[0]_i_1 
       (.I0(\rdata_data[0]_i_2_n_0 ),
        .I1(s_axi_BUS_A_ARADDR[2]),
        .I2(\rdata_data[0]_i_3_n_0 ),
        .I3(\rdata_data[1]_i_4_n_0 ),
        .I4(ar_hs),
        .I5(s_axi_BUS_A_RDATA[0]),
        .O(\rdata_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata_data[0]_i_2 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(\int_c_i_reg[31]_0 [0]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(\rdata_data[0]_i_4_n_0 ),
        .O(\rdata_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033223000002230)) 
    \rdata_data[0]_i_3 
       (.I0(int_c_o_ap_vld),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(int_gie_reg_n_0),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\rdata_data[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata_data[0]_i_4 
       (.I0(\int_a_reg[31]_0 [0]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(int_c_o[0]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(ap_start),
        .O(\rdata_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[10]_i_1 
       (.I0(\int_c_i_reg[31]_0 [10]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [10]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[10]),
        .O(\rdata_data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[11]_i_1 
       (.I0(\int_c_i_reg[31]_0 [11]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [11]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[11]),
        .O(\rdata_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[12]_i_1 
       (.I0(\int_c_i_reg[31]_0 [12]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [12]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[12]),
        .O(\rdata_data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[13]_i_1 
       (.I0(\int_c_i_reg[31]_0 [13]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [13]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[13]),
        .O(\rdata_data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[14]_i_1 
       (.I0(\int_c_i_reg[31]_0 [14]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [14]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[14]),
        .O(\rdata_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[15]_i_1 
       (.I0(\int_c_i_reg[31]_0 [15]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [15]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[15]),
        .O(\rdata_data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[16]_i_1 
       (.I0(\int_c_i_reg[31]_0 [16]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [16]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[16]),
        .O(\rdata_data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[17]_i_1 
       (.I0(\int_c_i_reg[31]_0 [17]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [17]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[17]),
        .O(\rdata_data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[18]_i_1 
       (.I0(\int_c_i_reg[31]_0 [18]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [18]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[18]),
        .O(\rdata_data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[19]_i_1 
       (.I0(\int_c_i_reg[31]_0 [19]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [19]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[19]),
        .O(\rdata_data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata_data[1]_i_1 
       (.I0(\rdata_data[1]_i_2_n_0 ),
        .I1(s_axi_BUS_A_ARADDR[2]),
        .I2(\rdata_data[1]_i_3_n_0 ),
        .I3(\rdata_data[1]_i_4_n_0 ),
        .I4(ar_hs),
        .I5(s_axi_BUS_A_RDATA[1]),
        .O(\rdata_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \rdata_data[1]_i_2 
       (.I0(p_0_in),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(\int_c_i_reg[31]_0 [1]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(s_axi_BUS_A_ARADDR[3]),
        .I5(\rdata_data[1]_i_5_n_0 ),
        .O(\rdata_data[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \rdata_data[1]_i_3 
       (.I0(s_axi_BUS_A_ARADDR[4]),
        .I1(s_axi_BUS_A_ARADDR[5]),
        .I2(s_axi_BUS_A_ARADDR[3]),
        .I3(p_1_in),
        .O(\rdata_data[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata_data[1]_i_4 
       (.I0(s_axi_BUS_A_ARADDR[1]),
        .I1(s_axi_BUS_A_ARADDR[0]),
        .O(\rdata_data[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata_data[1]_i_5 
       (.I0(\int_a_reg[31]_0 [1]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(int_c_o[1]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(data0[1]),
        .O(\rdata_data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[20]_i_1 
       (.I0(\int_c_i_reg[31]_0 [20]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [20]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[20]),
        .O(\rdata_data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[21]_i_1 
       (.I0(\int_c_i_reg[31]_0 [21]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [21]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[21]),
        .O(\rdata_data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[22]_i_1 
       (.I0(\int_c_i_reg[31]_0 [22]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [22]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[22]),
        .O(\rdata_data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[23]_i_1 
       (.I0(\int_c_i_reg[31]_0 [23]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [23]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[23]),
        .O(\rdata_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[24]_i_1 
       (.I0(\int_c_i_reg[31]_0 [24]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [24]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[24]),
        .O(\rdata_data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[25]_i_1 
       (.I0(\int_c_i_reg[31]_0 [25]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [25]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[25]),
        .O(\rdata_data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[26]_i_1 
       (.I0(\int_c_i_reg[31]_0 [26]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [26]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[26]),
        .O(\rdata_data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[27]_i_1 
       (.I0(\int_c_i_reg[31]_0 [27]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [27]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[27]),
        .O(\rdata_data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[28]_i_1 
       (.I0(\int_c_i_reg[31]_0 [28]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [28]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[28]),
        .O(\rdata_data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[29]_i_1 
       (.I0(\int_c_i_reg[31]_0 [29]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [29]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[29]),
        .O(\rdata_data[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \rdata_data[2]_i_1 
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(\int_c_i_reg[31]_0 [2]),
        .I3(s_axi_BUS_A_ARADDR[3]),
        .I4(\rdata_data[2]_i_2_n_0 ),
        .O(\rdata_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata_data[2]_i_2 
       (.I0(\int_a_reg[31]_0 [2]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(int_c_o[2]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(data0[2]),
        .O(\rdata_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[30]_i_1 
       (.I0(\int_c_i_reg[31]_0 [30]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [30]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[30]),
        .O(\rdata_data[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888880)) 
    \rdata_data[31]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_ARVALID),
        .I2(s_axi_BUS_A_ARADDR[1]),
        .I3(s_axi_BUS_A_ARADDR[0]),
        .I4(s_axi_BUS_A_ARADDR[2]),
        .O(\rdata_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata_data[31]_i_2 
       (.I0(s_axi_BUS_A_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[31]_i_3 
       (.I0(\int_c_i_reg[31]_0 [31]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [31]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[31]),
        .O(\rdata_data[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \rdata_data[3]_i_1 
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(\int_c_i_reg[31]_0 [3]),
        .I3(s_axi_BUS_A_ARADDR[3]),
        .I4(\rdata_data[3]_i_2_n_0 ),
        .O(\rdata_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata_data[3]_i_2 
       (.I0(\int_a_reg[31]_0 [3]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(int_c_o[3]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(data0[3]),
        .O(\rdata_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[4]_i_1 
       (.I0(\int_c_i_reg[31]_0 [4]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [4]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[4]),
        .O(\rdata_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[5]_i_1 
       (.I0(\int_c_i_reg[31]_0 [5]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [5]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[5]),
        .O(\rdata_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[6]_i_1 
       (.I0(\int_c_i_reg[31]_0 [6]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [6]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[6]),
        .O(\rdata_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \rdata_data[7]_i_1 
       (.I0(s_axi_BUS_A_ARADDR[5]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(\int_c_i_reg[31]_0 [7]),
        .I3(s_axi_BUS_A_ARADDR[3]),
        .I4(\rdata_data[7]_i_2_n_0 ),
        .O(\rdata_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata_data[7]_i_2 
       (.I0(\int_a_reg[31]_0 [7]),
        .I1(s_axi_BUS_A_ARADDR[4]),
        .I2(int_c_o[7]),
        .I3(s_axi_BUS_A_ARADDR[5]),
        .I4(data0[7]),
        .O(\rdata_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[8]_i_1 
       (.I0(\int_c_i_reg[31]_0 [8]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [8]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[8]),
        .O(\rdata_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033B8000000B800)) 
    \rdata_data[9]_i_1 
       (.I0(\int_c_i_reg[31]_0 [9]),
        .I1(s_axi_BUS_A_ARADDR[3]),
        .I2(\int_a_reg[31]_0 [9]),
        .I3(s_axi_BUS_A_ARADDR[4]),
        .I4(s_axi_BUS_A_ARADDR[5]),
        .I5(int_c_o[9]),
        .O(\rdata_data[9]_i_1_n_0 ));
  FDRE \rdata_data_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata_data[0]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_data_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[10]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[10]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[11]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[11]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[12]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[12]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[13]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[13]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[14]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[14]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[15]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[15]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[16]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[16]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[17]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[17]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[18]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[18]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[19]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[19]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\rdata_data[1]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_data_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[20]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[20]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[21]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[21]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[22]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[22]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[23]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[23]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[24]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[24]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[25]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[25]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[26]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[26]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[27]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[27]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[28]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[28]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[29]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[29]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[2]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[2]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[30]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[30]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[31]_i_3_n_0 ),
        .Q(s_axi_BUS_A_RDATA[31]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[3]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[3]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[4]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[4]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[5]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[5]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[6]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[6]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[7]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[7]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[8]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[8]),
        .R(\rdata_data[31]_i_1_n_0 ));
  FDRE \rdata_data_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata_data[9]_i_1_n_0 ),
        .Q(s_axi_BUS_A_RDATA[9]),
        .R(\rdata_data[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_BUS_A_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_BUS_A_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
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
