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
port ( clk_i : in std_logic;
       nreset_i : in std_logic);
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

begin

---------------------------------------------------------------
-- UDP Component
---------------------------------------------------------------
UDP: udp_complete
port map ( clk => clk_i,
           rst => nreset_i,
           
           -- Ethernet frame input
           s_eth_hdr_valid => '0',
           s_eth_hdr_ready => open,
           s_eth_dest_mac => (others => '0'),
           s_eth_src_mac => (others => '0'),
           s_eth_type => (others => '0'),
           s_eth_payload_axis_tdata => (others => '0'),
           s_eth_payload_axis_tvalid => '0',
           s_eth_payload_axis_tready => open,
           s_eth_payload_axis_tlast => '0',
           s_eth_payload_axis_tuser => '0',
           
           --Ethernet frame output
           m_eth_hdr_valid => open,
           m_eth_hdr_ready => '0',
           m_eth_dest_mac => open,
           m_eth_src_mac => open,
           m_eth_type => open,
           m_eth_payload_axis_tdata => open,
           m_eth_payload_axis_tvalid => open,
           m_eth_payload_axis_tready => '0',
           m_eth_payload_axis_tlast => open,
           m_eth_payload_axis_tuser => open,
    
           --IP input
           s_ip_hdr_valid => '0',
           s_ip_hdr_ready => open,
           s_ip_dscp => (others=>'0'),
           s_ip_ecn => (others=>'0'),
           s_ip_length => (others=>'0'),
           s_ip_ttl => (others=>'0'),
           s_ip_protocol => (others=>'0'),
           s_ip_source_ip => (others=>'0'),
           s_ip_dest_ip => (others=>'0'),
           s_ip_payload_axis_tdata => (others=>'0'),
           s_ip_payload_axis_tvalid => '0',
           s_ip_payload_axis_tready => open,
           s_ip_payload_axis_tlast => '0',
           s_ip_payload_axis_tuser => '0',
    
           --IP output
           m_ip_hdr_valid => open,
           m_ip_hdr_ready => '0',
           m_ip_eth_dest_mac => open,
           m_ip_eth_src_mac => open,
           m_ip_eth_type => open,
           m_ip_version => open,
           m_ip_ihl => open,
           m_ip_dscp => open,
           m_ip_ecn => open,
           m_ip_length => open,
           m_ip_identification => open,
           m_ip_flags => open,
           m_ip_fragment_offset => open,
           m_ip_ttl => open,
           m_ip_protocol => open,
           m_ip_header_checksum => open,
           m_ip_source_ip => open,
           m_ip_dest_ip => open,
           m_ip_payload_axis_tdata => open,
           m_ip_payload_axis_tvalid => open,
           m_ip_payload_axis_tready => '0',
           m_ip_payload_axis_tlast => open,
           m_ip_payload_axis_tuser => open,
    
           --UDP input
           s_udp_hdr_valid => '0',
           s_udp_hdr_ready => open,
           s_udp_ip_dscp => (others=>'0'),
           s_udp_ip_ecn => (others=>'0'),
           s_udp_ip_ttl => (others=>'0'),
           s_udp_ip_source_ip => (others=>'0'),
           s_udp_ip_dest_ip => (others=>'0'),
           s_udp_source_port => (others=>'0'),
           s_udp_dest_port => (others=>'0'),
           s_udp_length => (others=>'0'),
           s_udp_checksum => (others=>'0'),
           s_udp_payload_axis_tdata => (others=>'0'),
           s_udp_payload_axis_tvalid => '0',
           s_udp_payload_axis_tready => open,
           s_udp_payload_axis_tlast => '0',
           s_udp_payload_axis_tuser => '0',
    
           --UDP output
           m_udp_hdr_valid => open,
           m_udp_hdr_ready => '0',
           m_udp_eth_dest_mac => open,
           m_udp_eth_src_mac => open,
           m_udp_eth_type => open,
           m_udp_ip_version => open,
           m_udp_ip_ihl => open,
           m_udp_ip_dscp => open,
           m_udp_ip_ecn => open,
           m_udp_ip_length => open,
           m_udp_ip_identification => open,
           m_udp_ip_flags => open,
           m_udp_ip_fragment_offset => open,
           m_udp_ip_ttl => open,
           m_udp_ip_protocol => open,
           m_udp_ip_header_checksum => open,
           m_udp_ip_source_ip => open,
           m_udp_ip_dest_ip => open,
           m_udp_source_port => open,
           m_udp_dest_port => open,
           m_udp_length => open,
           m_udp_checksum => open,
           m_udp_payload_axis_tdata => open,
           m_udp_payload_axis_tvalid => open,
           m_udp_payload_axis_tready => '0',
           m_udp_payload_axis_tlast => open,
           m_udp_payload_axis_tuser => open,
           
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
           local_mac => (others=>'0'),
           local_ip => (others=>'0'),
           gateway_ip => (others=>'0'),
           subnet_mask => (others=>'0'),
           clear_arp_cache => '0');

---------------------------------------------------------------
-- ETH - MAC gmii
---------------------------------------------------------------           
eth_mac : eth_mac_1g_gmii_fifo
port map(
        gtx_clk => clk_i,
        gtx_rst => nreset_i,
        logic_clk => '0',
        logic_rst => '0',
        
        -- AXI input
        tx_axis_tdata => (others=>'0'),
        tx_axis_tkeep => (others=>'0'),
        tx_axis_tvalid => '0',
        tx_axis_tready => open,
        tx_axis_tlast => '0',
        tx_axis_tuser => '0',
    
        -- AXI output
        rx_axis_tdata => open,
        rx_axis_tkeep => open,
        rx_axis_tvalid => open,
        rx_axis_tready => '0',
        rx_axis_tlast => open,
        rx_axis_tuser => open,
    
        -- GMII interface
        gmii_rx_clk  => '0',
        gmii_rxd => (others=>'0'),
        gmii_rx_dv => '0',
        gmii_rx_er => '0',
        mii_tx_clk  => '0',
        gmii_tx_clk => open,
        gmii_txd => open,
        gmii_tx_en => open,
        gmii_tx_er => open,
        
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
        ifg_delay => (others=>'0'));
        
---------------------------------------------------------------
-- ETH_AXIS_TX
---------------------------------------------------------------       
AXIS_TX : eth_axis_tx
port map(
        clk => clk_i,
        rst => nreset_i,
    
        -- Ethernet frame input
        s_eth_hdr_valid => '0',
        s_eth_hdr_ready => open,
        s_eth_dest_mac => (others=>'0'),
        s_eth_src_mac => (others=>'0'),
        s_eth_type => (others=>'0'),
        s_eth_payload_axis_tdata => (others=>'0'),
        s_eth_payload_axis_tvalid => '0',
        s_eth_payload_axis_tready => open,
        s_eth_payload_axis_tlast => '0',
        s_eth_payload_axis_tuser => '0',
    
        -- AXI output
        m_axis_tdata => open,
        m_axis_tvalid => open,
        m_axis_tready => '0',
        m_axis_tlast => open,
        m_axis_tuser => open,
    
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
        s_axis_tdata => (others=>'0'),
        s_axis_tvalid => '0',
        s_axis_tready => open,
        s_axis_tlast => '0',
        s_axis_tuser => '0',
        
        -- Ethernet frame output
        m_eth_hdr_valid => open,
        m_eth_hdr_ready => '0',
        m_eth_dest_mac => open,
        m_eth_src_mac => open,
        m_eth_type => open,
        m_eth_payload_axis_tdata => open,
        m_eth_payload_axis_tvalid => open,
        m_eth_payload_axis_tready => '0',
        m_eth_payload_axis_tlast => open,
        m_eth_payload_axis_tuser => open,
    
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
        s_axis_tdata => (others=>'0'),
        s_axis_tkeep => (others=>'0'),
        s_axis_tvalid => '0',
        s_axis_tready => open,
        s_axis_tlast => '0',
        s_axis_tid => (others=>'0'),
        s_axis_tdest => (others=>'0'),
        s_axis_tuser => (others=>'0'),
    
        -- AXI output
        m_axis_tdata => open,
        m_axis_tkeep => open,
        m_axis_tvalid => open,
        m_axis_tready => '0',
        m_axis_tlast => open,
        m_axis_tid => open,
        m_axis_tdest => open,
        m_axis_tuser => open,
    
        -- Status
        status_overflow => open,
        status_bad_frame => open,
        status_good_frame => open);

end Behavioral;
