--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Fri Apr 24 15:06:39 2020
--Host        : Laptop running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target Echo_Server_wrapper.bd
--Design      : Echo_Server_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Echo_Server_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    bleds_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    digit_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ip_leds_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_select_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    push_to_send_i : in STD_LOGIC;
    switches_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sws_2bits_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    value_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Echo_Server_wrapper;

architecture STRUCTURE of Echo_Server_wrapper is
  component Echo_Server is
  port (
    digit_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    value_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    push_to_send_i : in STD_LOGIC;
    switches_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bleds_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ip_leds_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_select_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    sws_2bits_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Echo_Server;
begin
Echo_Server_i: component Echo_Server
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      bleds_o(7 downto 0) => bleds_o(7 downto 0),
      digit_o(7 downto 0) => digit_o(7 downto 0),
      ip_leds_o(3 downto 0) => ip_leds_o(3 downto 0),
      ip_select_i(2 downto 0) => ip_select_i(2 downto 0),
      push_to_send_i => push_to_send_i,
      switches_i(7 downto 0) => switches_i(7 downto 0),
      sws_2bits_tri_i(1 downto 0) => sws_2bits_tri_i(1 downto 0),
      value_o(7 downto 0) => value_o(7 downto 0)
    );
end STRUCTURE;
