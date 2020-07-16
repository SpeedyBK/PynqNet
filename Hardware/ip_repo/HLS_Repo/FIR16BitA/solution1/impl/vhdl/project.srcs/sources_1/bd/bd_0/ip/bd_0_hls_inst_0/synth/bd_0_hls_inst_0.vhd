-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: Hallo:hls:FIR16BitA:1.0
-- IP Revision: 2007010052

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bd_0_hls_inst_0 IS
  PORT (
    s_axi_BUS_A_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_BUS_A_AWVALID : IN STD_LOGIC;
    s_axi_BUS_A_AWREADY : OUT STD_LOGIC;
    s_axi_BUS_A_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_BUS_A_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_BUS_A_WVALID : IN STD_LOGIC;
    s_axi_BUS_A_WREADY : OUT STD_LOGIC;
    s_axi_BUS_A_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_BUS_A_BVALID : OUT STD_LOGIC;
    s_axi_BUS_A_BREADY : IN STD_LOGIC;
    s_axi_BUS_A_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_BUS_A_ARVALID : IN STD_LOGIC;
    s_axi_BUS_A_ARREADY : OUT STD_LOGIC;
    s_axi_BUS_A_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_BUS_A_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_BUS_A_RVALID : OUT STD_LOGIC;
    s_axi_BUS_A_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC
  );
END bd_0_hls_inst_0;

ARCHITECTURE bd_0_hls_inst_0_arch OF bd_0_hls_inst_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "yes";
  COMPONENT FIR16BitA IS
    GENERIC (
      C_S_AXI_BUS_A_ADDR_WIDTH : INTEGER;
      C_S_AXI_BUS_A_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_BUS_A_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_BUS_A_AWVALID : IN STD_LOGIC;
      s_axi_BUS_A_AWREADY : OUT STD_LOGIC;
      s_axi_BUS_A_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_BUS_A_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_BUS_A_WVALID : IN STD_LOGIC;
      s_axi_BUS_A_WREADY : OUT STD_LOGIC;
      s_axi_BUS_A_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_BUS_A_BVALID : OUT STD_LOGIC;
      s_axi_BUS_A_BREADY : IN STD_LOGIC;
      s_axi_BUS_A_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_BUS_A_ARVALID : IN STD_LOGIC;
      s_axi_BUS_A_ARREADY : OUT STD_LOGIC;
      s_axi_BUS_A_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_BUS_A_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_BUS_A_RVALID : OUT STD_LOGIC;
      s_axi_BUS_A_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC
    );
  END COMPONENT FIR16BitA;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "FIR16BitA,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF bd_0_hls_inst_0_arch : ARCHITECTURE IS "bd_0_hls_inst_0,FIR16BitA,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF bd_0_hls_inst_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_BUS_A_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREAD" & 
"S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_BUS_A_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR";
BEGIN
  U0 : FIR16BitA
    GENERIC MAP (
      C_S_AXI_BUS_A_ADDR_WIDTH => 5,
      C_S_AXI_BUS_A_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_BUS_A_AWADDR => s_axi_BUS_A_AWADDR,
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_AWVALID,
      s_axi_BUS_A_AWREADY => s_axi_BUS_A_AWREADY,
      s_axi_BUS_A_WDATA => s_axi_BUS_A_WDATA,
      s_axi_BUS_A_WSTRB => s_axi_BUS_A_WSTRB,
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID,
      s_axi_BUS_A_WREADY => s_axi_BUS_A_WREADY,
      s_axi_BUS_A_BRESP => s_axi_BUS_A_BRESP,
      s_axi_BUS_A_BVALID => s_axi_BUS_A_BVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_BREADY,
      s_axi_BUS_A_ARADDR => s_axi_BUS_A_ARADDR,
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_ARREADY => s_axi_BUS_A_ARREADY,
      s_axi_BUS_A_RDATA => s_axi_BUS_A_RDATA,
      s_axi_BUS_A_RRESP => s_axi_BUS_A_RRESP,
      s_axi_BUS_A_RVALID => s_axi_BUS_A_RVALID,
      s_axi_BUS_A_RREADY => s_axi_BUS_A_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt
    );
END bd_0_hls_inst_0_arch;
