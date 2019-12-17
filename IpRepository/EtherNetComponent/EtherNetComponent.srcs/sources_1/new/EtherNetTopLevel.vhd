----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2019 15:31:52
-- Design Name: 
-- Module Name: EtherNetTopLevel - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
library xil_defaultlib;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EtherNetTopLevel is
generic (AXIS_DATA_WIDTH : integer := 8;
         ID_WIDTH : integer := 8;
         DEST_WIDTH : integer := 8;
         USER_WIDTH : integer := 1
         );
port ( 
        -- Clock and Reset
        clk_i : in std_logic;
        nreset_i : in std_logic;
       
        --GMII Interface 
        phy_rx_clk : in std_logic;
        phy_rxd : in std_logic_vector (7 downto 0);
        phy_rx_dv : in std_logic;
        phy_rx_er : in std_logic;
        mii_tx_clk : in std_logic;
        phy_tx_clk : out std_logic;
        phy_txd : out std_logic_vector(7 downto 0);
        phy_tx_en : out std_logic;
        phy_tx_er : out std_logic
       );
end EtherNetTopLevel;

architecture Behavioral of EtherNetTopLevel is

---------------------------------------------------------------
-- UDP Component
---------------------------------------------------------------
component udp_complete is 
port (
    clk : in std_logic;
    rst : in std_logic;
    
    -- Ethernet frame input
    s_eth_hdr_valid : in std_logic;
    s_eth_hdr_ready : out std_logic;
    s_eth_dest_mac : in std_logic_vector (47 downto 0);
    s_eth_src_mac : in std_logic_vector (47 downto 0);
    s_eth_type : in std_logic_vector (15 downto 0);
    s_eth_payload_axis_tdata : in std_logic_vector (7 downto 0);
    s_eth_payload_axis_tvalid : in std_logic;
    s_eth_payload_axis_tready : out std_logic;
    s_eth_payload_axis_tlast : in std_logic;
    s_eth_payload_axis_tuser : in std_logic;
    
    -- Ethernet frame output
    m_eth_hdr_valid : out std_logic;
    m_eth_hdr_ready : in std_logic;
    m_eth_dest_mac : out std_logic_vector (47 downto 0);
    m_eth_src_mac : out std_logic_vector (47 downto 0);
    m_eth_type : out std_logic_vector (15 downto 0);
    m_eth_payload_axis_tdata : out std_logic_vector (7 downto 0);
    m_eth_payload_axis_tvalid : out std_logic;
    m_eth_payload_axis_tready : in std_logic;
    m_eth_payload_axis_tlast : out std_logic;
    m_eth_payload_axis_tuser : out std_logic;
    
    -- IP input
    s_ip_hdr_valid : in std_logic;
    s_ip_hdr_ready : out std_logic;
    s_ip_dscp : in std_logic_vector (5 downto 0);
    s_ip_ecn : in std_logic_vector (1 downto 0);
    s_ip_length : in std_logic_vector (15 downto 0);
    s_ip_ttl : in std_logic_vector (7 downto 0);
    s_ip_protocol : in std_logic_vector (7 downto 0);
    s_ip_source_ip : in std_logic_vector (31 downto 0);
    s_ip_dest_ip : in std_logic_vector (31 downto 0);
    s_ip_payload_axis_tdata : in std_logic_vector (7 downto 0);
    s_ip_payload_axis_tvalid : in std_logic;
    s_ip_payload_axis_tready : out std_logic;
    s_ip_payload_axis_tlast : in std_logic;
    s_ip_payload_axis_tuser : in std_logic;
    
    -- IP output
    m_ip_hdr_valid : out std_logic;
    m_ip_hdr_ready : in std_logic;
    m_ip_eth_dest_mac : out std_logic_vector (47 downto 0);
    m_ip_eth_src_mac : out std_logic_vector (47 downto 0);
    m_ip_eth_type : out std_logic_vector (15 downto 0);
    m_ip_version : out std_logic_vector (3 downto 0);
    m_ip_ihl  : out std_logic_vector (3 downto 0);
    m_ip_dscp : out std_logic_vector (5 downto 0);
    m_ip_ecn : out std_logic_vector (1 downto 0);
    m_ip_length : out std_logic_vector (15 downto 0);
    m_ip_identification : out std_logic_vector (15 downto 0);
    m_ip_flags : out std_logic_vector (2 downto 0);
    m_ip_fragment_offset : out std_logic_vector (12 downto 0);
    m_ip_ttl : out std_logic_vector (7 downto 0);
    m_ip_protocol : out std_logic_vector (7 downto 0);
    m_ip_header_checksum : out std_logic_vector (15 downto 0);
    m_ip_source_ip : out std_logic_vector (31 downto 0);
    m_ip_dest_ip : out std_logic_vector (31 downto 0);
    m_ip_payload_axis_tdata : out std_logic_vector (7 downto 0);
    m_ip_payload_axis_tvalid : out std_logic;
    m_ip_payload_axis_tready : in std_logic;
    m_ip_payload_axis_tlast : out std_logic;
    m_ip_payload_axis_tuser : out std_logic;
    
    -- UDP input
    s_udp_hdr_valid : in std_logic;
    s_udp_hdr_ready : out std_logic;
    s_udp_ip_dscp : in std_logic_vector (5 downto 0);
    s_udp_ip_ecn : in std_logic_vector (1 downto 0);
    s_udp_ip_ttl : in std_logic_vector (7 downto 0);
    s_udp_ip_source_ip : in std_logic_vector (31 downto 0);
    s_udp_ip_dest_ip : in std_logic_vector (31 downto 0);
    s_udp_source_port : in std_logic_vector (15 downto 0);
    s_udp_dest_port : in std_logic_vector (15 downto 0);
    s_udp_length : in std_logic_vector (15 downto 0);
    s_udp_checksum : in std_logic_vector (15 downto 0);
    s_udp_payload_axis_tdata : in std_logic_vector (7 downto 0);
    s_udp_payload_axis_tvalid : in std_logic;
    s_udp_payload_axis_tready : out std_logic;
    s_udp_payload_axis_tlast : in std_logic;
    s_udp_payload_axis_tuser : in std_logic;
    
    -- UDP output
    m_udp_hdr_valid : out std_logic;
    m_udp_hdr_ready : in std_logic;
    m_udp_eth_dest_mac : out std_logic_vector (47 downto 0);
    m_udp_eth_src_mac : out std_logic_vector (47 downto 0);
    m_udp_eth_type : out std_logic_vector (15 downto 0);
    m_udp_ip_version : out std_logic_vector (3 downto 0);
    m_udp_ip_ihl : out std_logic_vector (3 downto 0);
    m_udp_ip_dscp : out std_logic_vector (5 downto 0);
    m_udp_ip_ecn : out std_logic_vector (1 downto 0);
    m_udp_ip_length : out std_logic_vector (15 downto 0);
    m_udp_ip_identification : out std_logic_vector (15 downto 0);
    m_udp_ip_flags : out std_logic_vector (2 downto 0);
    m_udp_ip_fragment_offset : out std_logic_vector (12 downto 0);
    m_udp_ip_ttl : out std_logic_vector (7 downto 0);
    m_udp_ip_protocol : out std_logic_vector (7 downto 0);
    m_udp_ip_header_checksum : out std_logic_vector (15 downto 0);
    m_udp_ip_source_ip : out std_logic_vector (31 downto 0);
    m_udp_ip_dest_ip : out std_logic_vector (31 downto 0);
    m_udp_source_port : out std_logic_vector (15 downto 0);
    m_udp_dest_port : out std_logic_vector (15 downto 0);
    m_udp_length : out std_logic_vector (15 downto 0);
    m_udp_checksum : out std_logic_vector (15 downto 0);
    m_udp_payload_axis_tdata : out std_logic_vector (7 downto 0);
    m_udp_payload_axis_tvalid : out std_logic;
    m_udp_payload_axis_tready : in std_logic;
    m_udp_payload_axis_tlast : out std_logic;
    m_udp_payload_axis_tuser : out std_logic;

    -- Status
    ip_rx_busy : out std_logic;
    ip_tx_busy : out std_logic;
    udp_rx_busy : out std_logic;
    udp_tx_busy : out std_logic;
    ip_rx_error_header_early_termination : out std_logic;
    ip_rx_error_payload_early_termination : out std_logic;
    ip_rx_error_invalid_header : out std_logic;
    ip_rx_error_invalid_checksum : out std_logic;
    ip_tx_error_payload_early_termination : out std_logic;
    ip_tx_error_arp_failed : out std_logic;
    udp_rx_error_header_early_termination : out std_logic;
    udp_rx_error_payload_early_termination : out std_logic;
    udp_tx_error_payload_early_termination : out std_logic;

    -- Configuration
    local_mac : in std_logic_vector (47 downto 0);
    local_ip : in std_logic_vector (31 downto 0);
    gateway_ip : in std_logic_vector (31 downto 0);
    subnet_mask : in std_logic_vector (31 downto 0);
    clear_arp_cache : in std_logic);
end component;

---------------------------------------------------------------
-- ETH - MAC gmii
---------------------------------------------------------------
component eth_mac_1g_gmii_fifo is 
port(
    gtx_clk : in std_logic;
    gtx_rst : in std_logic;
    logic_clk : in std_logic;
    logic_rst : in std_logic;
    
    -- AXI input
    tx_axis_tdata : in std_logic_vector (AXIS_DATA_WIDTH-1 downto 0);
    tx_axis_tkeep : in std_logic_vector ((AXIS_DATA_WIDTH/8)-1 downto 0);
    tx_axis_tvalid : in std_logic;
    tx_axis_tready : out std_logic;
    tx_axis_tlast : in std_logic;
    tx_axis_tuser : in std_logic;

    -- AXI output
    rx_axis_tdata : out std_logic_vector (AXIS_DATA_WIDTH-1 downto 0);
    rx_axis_tkeep : out std_logic_vector ((AXIS_DATA_WIDTH/8)-1 downto 0);
    rx_axis_tvalid : out std_logic;
    rx_axis_tready : in std_logic;
    rx_axis_tlast : out std_logic;
    rx_axis_tuser : out std_logic;

    -- GMII interface
    gmii_rx_clk : in std_logic;
    gmii_rxd : in std_logic_vector (7 downto 0);
    gmii_rx_dv : in std_logic;
    gmii_rx_er : in std_logic;
    mii_tx_clk : in std_logic;
    gmii_tx_clk : out std_logic;
    gmii_txd : out std_logic_vector (7 downto 0);
    gmii_tx_en : out std_logic;
    gmii_tx_er : out std_logic;
    
    -- Status
    tx_error_underflow : out std_logic;
    tx_fifo_overflow : out std_logic;
    tx_fifo_bad_frame : out std_logic;
    tx_fifo_good_frame : out std_logic;
    rx_error_bad_frame : out std_logic;
    rx_error_bad_fcs : out std_logic;
    rx_fifo_overflow : out std_logic;
    rx_fifo_bad_frame : out std_logic;
    rx_fifo_good_frame : out std_logic;
    speed : out std_logic_vector (1 downto 0);

    -- Configuration
    ifg_delay : in std_logic_vector (7 downto 0));
end component;

---------------------------------------------------------------
-- ETH_AXIS_TX
---------------------------------------------------------------
component eth_axis_tx is
port (
    clk : in std_logic;
    rst : in std_logic;

    -- Ethernet frame input
    s_eth_hdr_valid : in std_logic;
    s_eth_hdr_ready : out std_logic;
    s_eth_dest_mac : in std_logic_vector (47 downto 0);
    s_eth_src_mac : in std_logic_vector (47 downto 0);
    s_eth_type : in std_logic_vector (15 downto 0);
    s_eth_payload_axis_tdata : in std_logic_vector (7 downto 0);
    s_eth_payload_axis_tvalid : in std_logic;
    s_eth_payload_axis_tready : out std_logic;
    s_eth_payload_axis_tlast : in std_logic;
    s_eth_payload_axis_tuser : in std_logic;

    -- AXI output
    m_axis_tdata : out std_logic_vector (7 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tready : in std_logic;
    m_axis_tlast : out std_logic;
    m_axis_tuser : out std_logic;

    -- Status signals
    busy : out std_logic);
end component;

---------------------------------------------------------------
-- ETH_AXIS_RX
---------------------------------------------------------------
component eth_axis_rx is
port(
    clk : in std_logic;
    rst : in std_logic;

    -- AXI input
    s_axis_tdata : in std_logic_vector (7 downto 0);
    s_axis_tvalid : in std_logic;
    s_axis_tready : out std_logic;
    s_axis_tlast : in std_logic;
    s_axis_tuser : in std_logic;
    
    -- Ethernet frame output
    m_eth_hdr_valid : out std_logic;
    m_eth_hdr_ready : in std_logic;
    m_eth_dest_mac : out std_logic_vector (47 downto 0);
    m_eth_src_mac : out std_logic_vector (47 downto 0);
    m_eth_type : out std_logic_vector (15 downto 0);
    m_eth_payload_axis_tdata : out std_logic_vector (7 downto 0);
    m_eth_payload_axis_tvalid : out std_logic;
    m_eth_payload_axis_tready : in std_logic;
    m_eth_payload_axis_tlast : out std_logic;
    m_eth_payload_axis_tuser : out std_logic;

    -- Status signals
    busy : out std_logic;
    error_header_early_termination : out std_logic);
end component;

---------------------------------------------------------------
-- UDP_FIFO
---------------------------------------------------------------
component axis_fifo is 
port (
    clk : in std_logic;
    rst : in std_logic;
    
    -- AXI input
    s_axis_tdata : in std_logic_vector (AXIS_DATA_WIDTH-1 downto 0);
    s_axis_tkeep : in std_logic_vector ((AXIS_DATA_WIDTH/8)-1 downto 0);
    s_axis_tvalid : in std_logic;
    s_axis_tready : out std_logic;
    s_axis_tlast : in std_logic;
    s_axis_tid : in std_logic_vector (ID_WIDTH-1 downto 0);
    s_axis_tdest : in std_logic_vector (DEST_WIDTH-1 downto 0);
    s_axis_tuser : in std_logic_vector (USER_WIDTH-1 downto 0);

    -- AXI output
    m_axis_tdata : out std_logic_vector (AXIS_DATA_WIDTH-1 downto 0);
    m_axis_tkeep : out std_logic_vector ((AXIS_DATA_WIDTH/8)-1 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tready : in std_logic;
    m_axis_tlast : out std_logic;
    m_axis_tid : out std_logic_vector (ID_WIDTH-1 downto 0);
    m_axis_tdest : out std_logic_vector (DEST_WIDTH-1 downto 0);
    m_axis_tuser : out std_logic_vector (USER_WIDTH-1 downto 0);

    -- Status
    status_overflow : out std_logic;
    status_bad_frame : out std_logic;
    status_good_frame : out std_logic);
end component;

---------------------------------------------------------------
-- Signals
---------------------------------------------------------------

-- AXI between MAC and Ethernet modules
signal rx_axis_tdata : std_logic_vector (7 downto 0);
signal rx_axis_tvalid : std_logic; 
signal rx_axis_tready : std_logic; 
signal rx_axis_tlast : std_logic; 
signal rx_axis_tuser : std_logic; 

signal tx_axis_tdata : std_logic_vector (7 downto 0);
signal tx_axis_tvalid : std_logic; 
signal tx_axis_tready : std_logic; 
signal tx_axis_tlast : std_logic; 
signal tx_axis_tuser : std_logic; 

-- Ethernet frame between Ethernet modules and UDP stack
signal rx_eth_hdr_ready : std_logic; 
signal rx_eth_hdr_valid : std_logic; 
signal rx_eth_dest_mac : std_logic_vector (47 downto 0);
signal rx_eth_src_mac : std_logic_vector (47 downto 0);
signal rx_eth_type : std_logic_vector (15 downto 0);
signal rx_eth_payload_axis_tdata : std_logic_vector (7 downto 0);
signal rx_eth_payload_axis_tvalid : std_logic; 
signal rx_eth_payload_axis_tready : std_logic; 
signal rx_eth_payload_axis_tlast : std_logic; 
signal rx_eth_payload_axis_tuser : std_logic; 

signal tx_eth_hdr_ready : std_logic; 
signal tx_eth_hdr_valid : std_logic; 
signal tx_eth_dest_mac : std_logic_vector (47 downto 0);
signal tx_eth_src_mac : std_logic_vector (47 downto 0);
signal tx_eth_type : std_logic_vector (15 downto 0);
signal tx_eth_payload_axis_tdata : std_logic_vector (7 downto 0);
signal tx_eth_payload_axis_tvalid : std_logic; 
signal tx_eth_payload_axis_tready : std_logic; 
signal tx_eth_payload_axis_tlast : std_logic; 
signal tx_eth_payload_axis_tuser : std_logic; 

-- IP frame connections
signal rx_ip_hdr_valid : std_logic; 
signal rx_ip_hdr_ready : std_logic; 
signal rx_ip_eth_dest_mac : std_logic_vector (47 downto 0);
signal rx_ip_eth_src_mac : std_logic_vector (47 downto 0);
signal rx_ip_eth_type : std_logic_vector (15 downto 0);
signal rx_ip_version : std_logic_vector (3 downto 0);
signal rx_ip_ihl : std_logic_vector (3 downto 0);
signal rx_ip_dscp : std_logic_vector (5 downto 0);
signal rx_ip_ecn : std_logic_vector (1 downto 0);
signal rx_ip_length : std_logic_vector (15 downto 0);
signal rx_ip_identification : std_logic_vector (15 downto 0);
signal rx_ip_flags : std_logic_vector (2 downto 0);
signal rx_ip_fragment_offset : std_logic_vector (12 downto 0);
signal rx_ip_ttl : std_logic_vector (7 downto 0);
signal rx_ip_protocol : std_logic_vector (7 downto 0);
signal rx_ip_header_checksum : std_logic_vector (15 downto 0);
signal rx_ip_source_ip : std_logic_vector (31 downto 0);
signal rx_ip_dest_ip : std_logic_vector (31 downto 0);
signal rx_ip_payload_axis_tdata : std_logic_vector (7 downto 0);
signal rx_ip_payload_axis_tvalid : std_logic; 
signal rx_ip_payload_axis_tready : std_logic; 
signal rx_ip_payload_axis_tlast : std_logic; 
signal rx_ip_payload_axis_tuser : std_logic; 

signal tx_ip_hdr_valid : std_logic; 
signal tx_ip_hdr_ready : std_logic; 
signal tx_ip_dscp : std_logic_vector (5 downto 0);
signal tx_ip_ecn : std_logic_vector (1 downto 0);
signal tx_ip_length : std_logic_vector (15 downto 0);
signal tx_ip_ttl : std_logic_vector (7 downto 0);
signal tx_ip_protocol : std_logic_vector (7 downto 0);
signal tx_ip_source_ip : std_logic_vector (31 downto 0);
signal tx_ip_dest_ip : std_logic_vector (31 downto 0);
signal tx_ip_payload_axis_tdata : std_logic_vector (7 downto 0);
signal tx_ip_payload_axis_tvalid : std_logic; 
signal tx_ip_payload_axis_tready : std_logic; 
signal tx_ip_payload_axis_tlast : std_logic; 
signal tx_ip_payload_axis_tuser : std_logic; 


-- UDP frame connections
signal rx_udp_hdr_valid : std_logic; 
signal rx_udp_hdr_ready : std_logic; 
signal rx_udp_eth_dest_mac : std_logic_vector (47 downto 0);
signal rx_udp_eth_src_mac : std_logic_vector (47 downto 0);
signal rx_udp_eth_type : std_logic_vector (15 downto 0);
signal rx_udp_ip_version : std_logic_vector (3 downto 0);
signal rx_udp_ip_ihl : std_logic_vector (3 downto 0);
signal rx_udp_ip_dscp : std_logic_vector (5 downto 0);
signal rx_udp_ip_ecn : std_logic_vector (1 downto 0);
signal rx_udp_ip_length : std_logic_vector (15 downto 0);
signal rx_udp_ip_identification : std_logic_vector (15 downto 0);
signal rx_udp_ip_flags : std_logic_vector (2 downto 0);
signal rx_udp_ip_fragment_offset : std_logic_vector (12 downto 0);
signal rx_udp_ip_ttl : std_logic_vector (7 downto 0);
signal rx_udp_ip_protocol : std_logic_vector (7 downto 0);
signal rx_udp_ip_header_checksum : std_logic_vector (15 downto 0);
signal rx_udp_ip_source_ip : std_logic_vector (31 downto 0);
signal rx_udp_ip_dest_ip : std_logic_vector (31 downto 0);
signal rx_udp_source_port : std_logic_vector (15 downto 0);
signal rx_udp_dest_port : std_logic_vector (15 downto 0);
signal rx_udp_length : std_logic_vector (15 downto 0);
signal rx_udp_checksum : std_logic_vector (15 downto 0);
signal rx_udp_payload_axis_tdata : std_logic_vector (7 downto 0);
signal rx_udp_payload_axis_tvalid : std_logic; 
signal rx_udp_payload_axis_tready : std_logic; 
signal rx_udp_payload_axis_tlast : std_logic; 
signal rx_udp_payload_axis_tuser : std_logic; 

signal tx_udp_hdr_valid : std_logic; 
signal tx_udp_hdr_ready : std_logic; 
signal tx_udp_ip_dscp : std_logic_vector (5 downto 0);
signal tx_udp_ip_ecn : std_logic_vector (1 downto 0);
signal tx_udp_ip_ttl : std_logic_vector (7 downto 0);
signal tx_udp_ip_source_ip : std_logic_vector (31 downto 0);
signal tx_udp_ip_dest_ip : std_logic_vector (31 downto 0);
signal tx_udp_source_port : std_logic_vector (15 downto 0);
signal tx_udp_dest_port : std_logic_vector (15 downto 0);
signal tx_udp_length : std_logic_vector (15 downto 0);
signal tx_udp_checksum : std_logic_vector (15 downto 0);
signal tx_udp_payload_axis_tdata : std_logic_vector (7 downto 0);
signal tx_udp_payload_axis_tvalid : std_logic; 
signal tx_udp_payload_axis_tready : std_logic; 
signal tx_udp_payload_axis_tlast : std_logic; 
signal tx_udp_payload_axis_tuser : std_logic; 

signal rx_fifo_udp_payload_axis_tdata : std_logic_vector (7 downto 0);
signal rx_fifo_udp_payload_axis_tvalid : std_logic; 
signal rx_fifo_udp_payload_axis_tready : std_logic; 
signal rx_fifo_udp_payload_axis_tlast : std_logic; 
signal rx_fifo_udp_payload_axis_tuser : std_logic_vector (USER_WIDTH-1 downto 0);

signal tx_fifo_udp_payload_axis_tdata : std_logic_vector (7 downto 0);
signal tx_fifo_udp_payload_axis_tvalid : std_logic; 
signal tx_fifo_udp_payload_axis_tready : std_logic; 
signal tx_fifo_udp_payload_axis_tlast : std_logic; 
signal tx_fifo_udp_payload_axis_tuser : std_logic_vector (USER_WIDTH-1 downto 0); 

-- Configuration
signal local_mac : std_logic_vector (47 downto 0)    := x"020000000000";
signal local_ip : std_logic_vector (31 downto 0)     := std_logic_vector(to_unsigned(192,8)) & 
                                                        std_logic_vector(to_unsigned(168,8)) & 
                                                        std_logic_vector(to_unsigned(2,8)) & 
                                                        std_logic_vector(to_unsigned(128,8));
signal gateway_ip : std_logic_vector (31 downto 0)   := std_logic_vector(to_unsigned(192,8)) & 
                                                        std_logic_vector(to_unsigned(168,8)) & 
                                                        std_logic_vector(to_unsigned(2,8)) & 
                                                        std_logic_vector(to_unsigned(1,8));
signal subnet_mask : std_logic_vector (31 downto 0)  := std_logic_vector(to_unsigned(255,8)) & 
                                                        std_logic_vector(to_unsigned(255,8)) & 
                                                        std_logic_vector(to_unsigned(255,8)) & 
                                                        std_logic_vector(to_unsigned(0,8));

begin

---------------------------------------------------------------
-- UDP Component
---------------------------------------------------------------
UDP: udp_complete
port map ( clk => clk_i,
           rst => nreset_i,
           
           -- Ethernet frame input
           s_eth_hdr_valid => rx_eth_hdr_valid,
           s_eth_hdr_ready => rx_eth_hdr_ready,
           s_eth_dest_mac => rx_eth_dest_mac,
           s_eth_src_mac => rx_eth_src_mac,
           s_eth_type => rx_eth_type,
           s_eth_payload_axis_tdata => rx_eth_payload_axis_tdata,
           s_eth_payload_axis_tvalid => rx_eth_payload_axis_tvalid,
           s_eth_payload_axis_tready => rx_eth_payload_axis_tready,
           s_eth_payload_axis_tlast => rx_eth_payload_axis_tlast,
           s_eth_payload_axis_tuser => rx_eth_payload_axis_tuser,
           
           --Ethernet frame output
           m_eth_hdr_valid => tx_eth_hdr_valid,
           m_eth_hdr_ready => tx_eth_hdr_ready,
           m_eth_dest_mac => tx_eth_dest_mac,
           m_eth_src_mac => tx_eth_src_mac,
           m_eth_type => tx_eth_type,
           m_eth_payload_axis_tdata => tx_eth_payload_axis_tdata,
           m_eth_payload_axis_tvalid => tx_eth_payload_axis_tvalid,
           m_eth_payload_axis_tready => tx_eth_payload_axis_tready,
           m_eth_payload_axis_tlast => tx_eth_payload_axis_tlast,
           m_eth_payload_axis_tuser => tx_eth_payload_axis_tuser,
    
           --IP input
           s_ip_hdr_valid => tx_ip_hdr_valid,
           s_ip_hdr_ready => tx_ip_hdr_ready,
           s_ip_dscp => tx_ip_dscp,
           s_ip_ecn => tx_ip_ecn,
           s_ip_length => tx_ip_length,
           s_ip_ttl => tx_ip_ttl,
           s_ip_protocol => tx_ip_protocol,
           s_ip_source_ip => tx_ip_source_ip,
           s_ip_dest_ip => tx_ip_dest_ip,
           s_ip_payload_axis_tdata => tx_ip_payload_axis_tdata,
           s_ip_payload_axis_tvalid => tx_ip_payload_axis_tvalid,
           s_ip_payload_axis_tready => tx_ip_payload_axis_tready,
           s_ip_payload_axis_tlast => tx_ip_payload_axis_tlast,
           s_ip_payload_axis_tuser => tx_ip_payload_axis_tuser,
    
           --IP output
           m_ip_hdr_valid => rx_ip_hdr_valid,
           m_ip_hdr_ready => rx_ip_hdr_ready,
           m_ip_eth_dest_mac => rx_ip_eth_dest_mac,
           m_ip_eth_src_mac => rx_ip_eth_src_mac,
           m_ip_eth_type => rx_ip_eth_type,
           m_ip_version => rx_ip_version,
           m_ip_ihl => rx_ip_ihl,
           m_ip_dscp => rx_ip_dscp,
           m_ip_ecn => rx_ip_ecn,
           m_ip_length => rx_ip_length,
           m_ip_identification => rx_ip_identification,
           m_ip_flags => rx_ip_flags,
           m_ip_fragment_offset => rx_ip_fragment_offset,
           m_ip_ttl => rx_ip_ttl,
           m_ip_protocol => rx_ip_protocol,
           m_ip_header_checksum => rx_ip_header_checksum,
           m_ip_source_ip => rx_ip_source_ip,
           m_ip_dest_ip => rx_ip_dest_ip,
           m_ip_payload_axis_tdata => rx_ip_payload_axis_tdata,
           m_ip_payload_axis_tvalid => rx_ip_payload_axis_tvalid,
           m_ip_payload_axis_tready => rx_ip_payload_axis_tready,
           m_ip_payload_axis_tlast => rx_ip_payload_axis_tlast,
           m_ip_payload_axis_tuser => rx_ip_payload_axis_tuser,
    
           --UDP input
           s_udp_hdr_valid => tx_udp_hdr_valid,
           s_udp_hdr_ready => tx_udp_hdr_ready,
           s_udp_ip_dscp => tx_udp_ip_dscp,
           s_udp_ip_ecn => tx_udp_ip_ecn,
           s_udp_ip_ttl => tx_udp_ip_ttl,
           s_udp_ip_source_ip => tx_udp_ip_source_ip,
           s_udp_ip_dest_ip => tx_udp_ip_dest_ip,
           s_udp_source_port => tx_udp_source_port,
           s_udp_dest_port => tx_udp_dest_port,
           s_udp_length => tx_udp_length,
           s_udp_checksum => tx_udp_checksum,
           s_udp_payload_axis_tdata => tx_udp_payload_axis_tdata,
           s_udp_payload_axis_tvalid => tx_udp_payload_axis_tvalid,
           s_udp_payload_axis_tready => tx_udp_payload_axis_tready,
           s_udp_payload_axis_tlast => tx_udp_payload_axis_tlast,
           s_udp_payload_axis_tuser => tx_udp_payload_axis_tuser,
    
           --UDP output
           m_udp_hdr_valid => rx_udp_hdr_valid,
           m_udp_hdr_ready => rx_udp_hdr_ready,
           m_udp_eth_dest_mac => rx_udp_eth_dest_mac,
           m_udp_eth_src_mac => rx_udp_eth_src_mac,
           m_udp_eth_type => rx_udp_eth_type,
           m_udp_ip_version => rx_udp_ip_version,
           m_udp_ip_ihl => rx_udp_ip_ihl,
           m_udp_ip_dscp => rx_udp_ip_dscp,
           m_udp_ip_ecn => rx_udp_ip_ecn,
           m_udp_ip_length => rx_udp_ip_length,
           m_udp_ip_identification => rx_udp_ip_identification,
           m_udp_ip_flags => rx_udp_ip_flags,
           m_udp_ip_fragment_offset => rx_udp_ip_fragment_offset,
           m_udp_ip_ttl => rx_udp_ip_ttl,
           m_udp_ip_protocol => rx_udp_ip_protocol,
           m_udp_ip_header_checksum => rx_udp_ip_header_checksum,
           m_udp_ip_source_ip => rx_udp_ip_source_ip,
           m_udp_ip_dest_ip => rx_udp_ip_dest_ip,
           m_udp_source_port => rx_udp_source_port,
           m_udp_dest_port => rx_udp_dest_port,
           m_udp_length => rx_udp_length,
           m_udp_checksum => rx_udp_checksum,
           m_udp_payload_axis_tdata => rx_udp_payload_axis_tdata,
           m_udp_payload_axis_tvalid => rx_udp_payload_axis_tvalid,
           m_udp_payload_axis_tready => rx_udp_payload_axis_tready,
           m_udp_payload_axis_tlast => rx_udp_payload_axis_tlast,
           m_udp_payload_axis_tuser => rx_udp_payload_axis_tuser,
           
           --Status
           ip_rx_busy => open,
           ip_tx_busy => open,
           udp_rx_busy => open,
           udp_tx_busy => open,
           ip_rx_error_header_early_termination => open,
           ip_rx_error_payload_early_termination => open,
           ip_rx_error_invalid_header => open,
           ip_rx_error_invalid_checksum => open,
           ip_tx_error_payload_early_termination => open,
           ip_tx_error_arp_failed => open,
           udp_rx_error_header_early_termination => open,
           udp_rx_error_payload_early_termination => open,
           udp_tx_error_payload_early_termination => open,
           
           --Configuration
           local_mac => local_mac,
           local_ip => local_ip,
           gateway_ip => gateway_ip,
           subnet_mask => subnet_mask,
           clear_arp_cache => '0');

---------------------------------------------------------------
-- ETH - MAC gmii
---------------------------------------------------------------           
eth_mac : eth_mac_1g_gmii_fifo
port map(
        gtx_clk => clk_i,
        gtx_rst => nreset_i,
        logic_clk => clk_i,
        logic_rst => nreset_i,
        
        -- AXI input
        tx_axis_tdata => tx_axis_tdata,
        tx_axis_tkeep => (others => '0'),
        tx_axis_tvalid => tx_axis_tvalid,
        tx_axis_tready => tx_axis_tready,
        tx_axis_tlast => tx_axis_tlast,
        tx_axis_tuser => tx_axis_tuser,
    
        -- AXI output
        rx_axis_tdata => rx_axis_tdata,
        rx_axis_tkeep => open,
        rx_axis_tvalid => rx_axis_tvalid,
        rx_axis_tready => rx_axis_tready,
        rx_axis_tlast => rx_axis_tlast,
        rx_axis_tuser => rx_axis_tuser,
    
        -- GMII interface
        gmii_rx_clk  => phy_rx_clk,
        gmii_rxd => phy_rxd,
        gmii_rx_dv => phy_rx_dv,
        gmii_rx_er => phy_rx_er,
        mii_tx_clk  => mii_tx_clk,
        gmii_tx_clk => phy_tx_clk,
        gmii_txd => phy_txd,
        gmii_tx_en => phy_tx_en,
        gmii_tx_er => phy_tx_er,
        
        -- Status
        tx_error_underflow => open,
        tx_fifo_overflow => open,
        tx_fifo_bad_frame => open,
        tx_fifo_good_frame => open,
        rx_error_bad_frame => open,
        rx_error_bad_fcs => open,
        rx_fifo_overflow => open,
        rx_fifo_bad_frame => open,
        rx_fifo_good_frame => open,
        speed => open,
    
        -- Configuration
        ifg_delay => std_logic_vector(to_unsigned(12, 8))
        );
        
---------------------------------------------------------------
-- ETH_AXIS_TX
---------------------------------------------------------------       
AXIS_TX : eth_axis_tx
port map(
        clk => clk_i,
        rst => nreset_i,
    
        -- Ethernet frame input
        s_eth_hdr_valid => tx_eth_hdr_valid,
        s_eth_hdr_ready => tx_eth_hdr_ready,
        s_eth_dest_mac => tx_eth_dest_mac,
        s_eth_src_mac => tx_eth_src_mac,
        s_eth_type => tx_eth_type,
        s_eth_payload_axis_tdata => tx_eth_payload_axis_tdata,
        s_eth_payload_axis_tvalid => tx_eth_payload_axis_tvalid,
        s_eth_payload_axis_tready => tx_eth_payload_axis_tready,
        s_eth_payload_axis_tlast => tx_eth_payload_axis_tlast,
        s_eth_payload_axis_tuser => tx_eth_payload_axis_tuser,
    
        -- AXI output
        m_axis_tdata => tx_axis_tdata,
        m_axis_tvalid => tx_axis_tvalid,
        m_axis_tready => tx_axis_tready,
        m_axis_tlast => tx_axis_tlast,
        m_axis_tuser => tx_axis_tuser,
    
        -- Status signals
        busy => open);

---------------------------------------------------------------
-- ETH_AXIS_RX
---------------------------------------------------------------        
AXIS_RX : eth_axis_rx
port map(
        clk => clk_i,
        rst => nreset_i,
    
        -- AXI input
        s_axis_tdata => rx_axis_tdata,
        s_axis_tvalid => rx_axis_tvalid,
        s_axis_tready => rx_axis_tready,
        s_axis_tlast => rx_axis_tlast,
        s_axis_tuser => rx_axis_tuser,
        
        -- Ethernet frame output
        m_eth_hdr_valid => rx_eth_hdr_valid,
        m_eth_hdr_ready => rx_eth_hdr_ready,
        m_eth_dest_mac => rx_eth_dest_mac,
        m_eth_src_mac => rx_eth_src_mac,
        m_eth_type => rx_eth_type,
        m_eth_payload_axis_tdata => rx_eth_payload_axis_tdata,
        m_eth_payload_axis_tvalid => rx_eth_payload_axis_tvalid,
        m_eth_payload_axis_tready => rx_eth_payload_axis_tready,
        m_eth_payload_axis_tlast => rx_eth_payload_axis_tlast,
        m_eth_payload_axis_tuser => rx_eth_payload_axis_tuser,
    
        -- Status signals
        busy => open,
        error_header_early_termination => open);
        
---------------------------------------------------------------
-- UDP_FIFO
---------------------------------------------------------------        
UDP_FIFO : axis_fifo 
port map (
        clk => clk_i,
        rst => nreset_i,
        
        -- AXI input
        s_axis_tdata => rx_fifo_udp_payload_axis_tdata,
        s_axis_tkeep => (others=>'0'),
        s_axis_tvalid => rx_fifo_udp_payload_axis_tvalid,
        s_axis_tready => rx_fifo_udp_payload_axis_tready,
        s_axis_tlast => rx_fifo_udp_payload_axis_tlast,
        s_axis_tid => (others=>'0'),
        s_axis_tdest => (others=>'0'),
        s_axis_tuser => rx_fifo_udp_payload_axis_tuser,
    
        -- AXI output
        m_axis_tdata => tx_fifo_udp_payload_axis_tdata,
        m_axis_tkeep => open,
        m_axis_tvalid => tx_fifo_udp_payload_axis_tvalid,
        m_axis_tready => tx_fifo_udp_payload_axis_tready,
        m_axis_tlast => tx_fifo_udp_payload_axis_tlast,
        m_axis_tid => open,
        m_axis_tdest => open,
        m_axis_tuser => tx_fifo_udp_payload_axis_tuser,
    
        -- Status
        status_overflow => open,
        status_bad_frame => open,
        status_good_frame => open);

end Behavioral;
