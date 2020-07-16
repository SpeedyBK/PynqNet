--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Wed Jul  1 00:52:35 2020
--Host        : Laptop running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_BUS_A_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_BUS_A_arready : out STD_LOGIC;
    s_axi_BUS_A_arvalid : in STD_LOGIC;
    s_axi_BUS_A_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_BUS_A_awready : out STD_LOGIC;
    s_axi_BUS_A_awvalid : in STD_LOGIC;
    s_axi_BUS_A_bready : in STD_LOGIC;
    s_axi_BUS_A_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_bvalid : out STD_LOGIC;
    s_axi_BUS_A_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_rready : in STD_LOGIC;
    s_axi_BUS_A_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_rvalid : out STD_LOGIC;
    s_axi_BUS_A_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_wready : out STD_LOGIC;
    s_axi_BUS_A_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_wvalid : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
  port (
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_AWREADY : out STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_ARREADY : out STD_LOGIC;
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  end component bd_0_hls_inst_0;
  signal ap_clk_0_1 : STD_LOGIC;
  signal ap_rst_n_0_1 : STD_LOGIC;
  signal hls_inst_interrupt : STD_LOGIC;
  signal s_axi_BUS_A_0_1_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s_axi_BUS_A_0_1_ARREADY : STD_LOGIC;
  signal s_axi_BUS_A_0_1_ARVALID : STD_LOGIC;
  signal s_axi_BUS_A_0_1_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s_axi_BUS_A_0_1_AWREADY : STD_LOGIC;
  signal s_axi_BUS_A_0_1_AWVALID : STD_LOGIC;
  signal s_axi_BUS_A_0_1_BREADY : STD_LOGIC;
  signal s_axi_BUS_A_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_BUS_A_0_1_BVALID : STD_LOGIC;
  signal s_axi_BUS_A_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_BUS_A_0_1_RREADY : STD_LOGIC;
  signal s_axi_BUS_A_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_BUS_A_0_1_RVALID : STD_LOGIC;
  signal s_axi_BUS_A_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_BUS_A_0_1_WREADY : STD_LOGIC;
  signal s_axi_BUS_A_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_BUS_A_0_1_WVALID : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_PARAMETER of s_axi_BUS_A_araddr : signal is "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
  attribute X_INTERFACE_INFO of s_axi_BUS_A_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ";
begin
  ap_clk_0_1 <= ap_clk;
  ap_rst_n_0_1 <= ap_rst_n;
  interrupt <= hls_inst_interrupt;
  s_axi_BUS_A_0_1_ARADDR(4 downto 0) <= s_axi_BUS_A_araddr(4 downto 0);
  s_axi_BUS_A_0_1_ARVALID <= s_axi_BUS_A_arvalid;
  s_axi_BUS_A_0_1_AWADDR(4 downto 0) <= s_axi_BUS_A_awaddr(4 downto 0);
  s_axi_BUS_A_0_1_AWVALID <= s_axi_BUS_A_awvalid;
  s_axi_BUS_A_0_1_BREADY <= s_axi_BUS_A_bready;
  s_axi_BUS_A_0_1_RREADY <= s_axi_BUS_A_rready;
  s_axi_BUS_A_0_1_WDATA(31 downto 0) <= s_axi_BUS_A_wdata(31 downto 0);
  s_axi_BUS_A_0_1_WSTRB(3 downto 0) <= s_axi_BUS_A_wstrb(3 downto 0);
  s_axi_BUS_A_0_1_WVALID <= s_axi_BUS_A_wvalid;
  s_axi_BUS_A_arready <= s_axi_BUS_A_0_1_ARREADY;
  s_axi_BUS_A_awready <= s_axi_BUS_A_0_1_AWREADY;
  s_axi_BUS_A_bresp(1 downto 0) <= s_axi_BUS_A_0_1_BRESP(1 downto 0);
  s_axi_BUS_A_bvalid <= s_axi_BUS_A_0_1_BVALID;
  s_axi_BUS_A_rdata(31 downto 0) <= s_axi_BUS_A_0_1_RDATA(31 downto 0);
  s_axi_BUS_A_rresp(1 downto 0) <= s_axi_BUS_A_0_1_RRESP(1 downto 0);
  s_axi_BUS_A_rvalid <= s_axi_BUS_A_0_1_RVALID;
  s_axi_BUS_A_wready <= s_axi_BUS_A_0_1_WREADY;
hls_inst: component bd_0_hls_inst_0
     port map (
      ap_clk => ap_clk_0_1,
      ap_rst_n => ap_rst_n_0_1,
      interrupt => hls_inst_interrupt,
      s_axi_BUS_A_ARADDR(4 downto 0) => s_axi_BUS_A_0_1_ARADDR(4 downto 0),
      s_axi_BUS_A_ARREADY => s_axi_BUS_A_0_1_ARREADY,
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_0_1_ARVALID,
      s_axi_BUS_A_AWADDR(4 downto 0) => s_axi_BUS_A_0_1_AWADDR(4 downto 0),
      s_axi_BUS_A_AWREADY => s_axi_BUS_A_0_1_AWREADY,
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_0_1_AWVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_0_1_BREADY,
      s_axi_BUS_A_BRESP(1 downto 0) => s_axi_BUS_A_0_1_BRESP(1 downto 0),
      s_axi_BUS_A_BVALID => s_axi_BUS_A_0_1_BVALID,
      s_axi_BUS_A_RDATA(31 downto 0) => s_axi_BUS_A_0_1_RDATA(31 downto 0),
      s_axi_BUS_A_RREADY => s_axi_BUS_A_0_1_RREADY,
      s_axi_BUS_A_RRESP(1 downto 0) => s_axi_BUS_A_0_1_RRESP(1 downto 0),
      s_axi_BUS_A_RVALID => s_axi_BUS_A_0_1_RVALID,
      s_axi_BUS_A_WDATA(31 downto 0) => s_axi_BUS_A_0_1_WDATA(31 downto 0),
      s_axi_BUS_A_WREADY => s_axi_BUS_A_0_1_WREADY,
      s_axi_BUS_A_WSTRB(3 downto 0) => s_axi_BUS_A_0_1_WSTRB(3 downto 0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_0_1_WVALID
    );
end STRUCTURE;
