-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Apr 30 23:53:17 2020
-- Host        : Laptop running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Echo_Server_FIR16BitA_0_0_sim_netlist.vhdl
-- Design      : Echo_Server_FIR16BitA_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA_BUS_A_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    \int_a_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \int_c_i_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    int_ap_start_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    c_1_vld_reg_reg : out STD_LOGIC;
    int_ap_start_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_rst_n : in STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \int_c_o_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA_BUS_A_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA_BUS_A_s_axi is
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \int_a[31]_i_3_n_0\ : STD_LOGIC;
  signal \^int_a_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_ap_done1 : STD_LOGIC;
  signal int_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_ap_idle_i_1_n_0 : STD_LOGIC;
  signal int_ap_start1 : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_ap_start_i_3_n_0 : STD_LOGIC;
  signal int_ap_start_i_4_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal \int_c_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \^int_c_i_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_c_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_c_o_ap_vld : STD_LOGIC;
  signal int_c_o_ap_vld1 : STD_LOGIC;
  signal int_c_o_ap_vld_i_1_n_0 : STD_LOGIC;
  signal int_gie2 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier9_out : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \or\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal or0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in13_out : STD_LOGIC;
  signal p_0_in15_out : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \rdata_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata_data[1]_i_5_n_0\ : STD_LOGIC;
  signal \rdata_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_data[9]_i_1_n_0\ : STD_LOGIC;
  signal rnext : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^s_axi_bus_a_bvalid\ : STD_LOGIC;
  signal \^s_axi_bus_a_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_bus_a_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "rddata:100,rdidle:010,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "rddata:100,rdidle:010,iSTATE:001";
  attribute SOFT_HLUTNM of \FSM_onehot_wstate[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "wrdata:0100,wrresp:1000,wridle:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \a_read_reg_51[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \c_0_data_reg[31]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \c_1_data_reg[31]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of c_1_vld_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_a[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_a[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_a[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_a[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_a[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_a[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_a[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_a[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_a[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_a[18]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_a[19]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_a[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_a[20]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_a[21]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_a[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_a[23]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_a[24]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_a[25]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_a[26]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_a[27]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_a[28]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_a[29]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_a[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_a[30]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_a[31]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_a[31]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_a[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_a[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_a[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_a[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_a[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_a[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_a[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of int_ap_start_i_4 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_c_i[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_c_i[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_c_i[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_c_i[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_c_i[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_c_i[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_c_i[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_c_i[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c_i[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_c_i[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_c_i[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_c_i[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_c_i[20]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_c_i[21]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_c_i[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_c_i[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_c_i[24]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_c_i[25]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_c_i[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_c_i[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_c_i[28]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_c_i[29]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_c_i[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_c_i[30]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_c_i[31]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_c_i[31]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_c_i[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_c_i[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_c_i[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_c_i[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_c_i[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_c_i[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_c_i[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_ier[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_ier[1]_i_1\ : label is "soft_lutpair37";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  SR(0) <= \^sr\(0);
  \int_a_reg[31]_0\(31 downto 0) <= \^int_a_reg[31]_0\(31 downto 0);
  \int_c_i_reg[31]_0\(31 downto 0) <= \^int_c_i_reg[31]_0\(31 downto 0);
  s_axi_BUS_A_BVALID <= \^s_axi_bus_a_bvalid\;
  s_axi_BUS_A_RDATA(31 downto 0) <= \^s_axi_bus_a_rdata\(31 downto 0);
  s_axi_BUS_A_RVALID <= \^s_axi_bus_a_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F747"
    )
        port map (
      I0 => s_axi_BUS_A_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \^s_axi_bus_a_rvalid\,
      I3 => s_axi_BUS_A_RREADY,
      O => rnext(1)
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => s_axi_BUS_A_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \^s_axi_bus_a_rvalid\,
      I3 => s_axi_BUS_A_RREADY,
      O => rnext(2)
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => rnext(1),
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => rnext(2),
      Q => \^s_axi_bus_a_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BFF8B"
    )
        port map (
      I0 => s_axi_BUS_A_BREADY,
      I1 => \^s_axi_bus_a_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_BUS_A_AWVALID,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_BUS_A_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_BUS_A_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_BUS_A_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_BUS_A_BREADY,
      I3 => \^s_axi_bus_a_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_bus_a_bvalid\,
      R => \^sr\(0)
    );
\a_read_reg_51[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      O => int_ap_start_reg_0(0)
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => Q(2),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => Q(1),
      I3 => Q(2),
      O => D(1)
    );
\c_0_data_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      O => int_ap_start_reg_1(0)
    );
\c_1_data_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Q(1),
      I1 => ap_start,
      I2 => Q(0),
      O => \ap_CS_fsm_reg[1]\(0)
    );
c_1_vld_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8CC"
    )
        port map (
      I0 => E(0),
      I1 => Q(1),
      I2 => ap_start,
      I3 => Q(0),
      O => c_1_vld_reg_reg
    );
\int_a[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(0),
      O => or0_out(0)
    );
\int_a[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(10),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(10),
      O => or0_out(10)
    );
\int_a[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(11),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(11),
      O => or0_out(11)
    );
\int_a[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(12),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(12),
      O => or0_out(12)
    );
\int_a[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(13),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(13),
      O => or0_out(13)
    );
\int_a[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(14),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(14),
      O => or0_out(14)
    );
\int_a[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(15),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(15),
      O => or0_out(15)
    );
\int_a[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(16),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(16),
      O => or0_out(16)
    );
\int_a[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(17),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(17),
      O => or0_out(17)
    );
\int_a[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(18),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(18),
      O => or0_out(18)
    );
\int_a[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(19),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(19),
      O => or0_out(19)
    );
\int_a[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(1),
      O => or0_out(1)
    );
\int_a[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(20),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(20),
      O => or0_out(20)
    );
\int_a[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(21),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(21),
      O => or0_out(21)
    );
\int_a[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(22),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(22),
      O => or0_out(22)
    );
\int_a[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(23),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_a_reg[31]_0\(23),
      O => or0_out(23)
    );
\int_a[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(24),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(24),
      O => or0_out(24)
    );
\int_a[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(25),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(25),
      O => or0_out(25)
    );
\int_a[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(26),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(26),
      O => or0_out(26)
    );
\int_a[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(27),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(27),
      O => or0_out(27)
    );
\int_a[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(28),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(28),
      O => or0_out(28)
    );
\int_a[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(29),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(29),
      O => or0_out(29)
    );
\int_a[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(2),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(2),
      O => or0_out(2)
    );
\int_a[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(30),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(30),
      O => or0_out(30)
    );
\int_a[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \int_a[31]_i_3_n_0\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[0]\,
      I4 => \waddr_reg_n_0_[5]\,
      I5 => p_17_in,
      O => p_0_in15_out
    );
\int_a[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(31),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_a_reg[31]_0\(31),
      O => or0_out(31)
    );
\int_a[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[2]\,
      O => \int_a[31]_i_3_n_0\
    );
\int_a[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_BUS_A_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      O => p_17_in
    );
\int_a[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(3),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(3),
      O => or0_out(3)
    );
\int_a[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(4),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(4),
      O => or0_out(4)
    );
\int_a[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(5),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(5),
      O => or0_out(5)
    );
\int_a[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(6),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(6),
      O => or0_out(6)
    );
\int_a[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_a_reg[31]_0\(7),
      O => or0_out(7)
    );
\int_a[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(8),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(8),
      O => or0_out(8)
    );
\int_a[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(9),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_a_reg[31]_0\(9),
      O => or0_out(9)
    );
\int_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(0),
      Q => \^int_a_reg[31]_0\(0),
      R => '0'
    );
\int_a_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(10),
      Q => \^int_a_reg[31]_0\(10),
      R => '0'
    );
\int_a_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(11),
      Q => \^int_a_reg[31]_0\(11),
      R => '0'
    );
\int_a_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(12),
      Q => \^int_a_reg[31]_0\(12),
      R => '0'
    );
\int_a_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(13),
      Q => \^int_a_reg[31]_0\(13),
      R => '0'
    );
\int_a_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(14),
      Q => \^int_a_reg[31]_0\(14),
      R => '0'
    );
\int_a_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(15),
      Q => \^int_a_reg[31]_0\(15),
      R => '0'
    );
\int_a_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(16),
      Q => \^int_a_reg[31]_0\(16),
      R => '0'
    );
\int_a_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(17),
      Q => \^int_a_reg[31]_0\(17),
      R => '0'
    );
\int_a_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(18),
      Q => \^int_a_reg[31]_0\(18),
      R => '0'
    );
\int_a_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(19),
      Q => \^int_a_reg[31]_0\(19),
      R => '0'
    );
\int_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(1),
      Q => \^int_a_reg[31]_0\(1),
      R => '0'
    );
\int_a_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(20),
      Q => \^int_a_reg[31]_0\(20),
      R => '0'
    );
\int_a_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(21),
      Q => \^int_a_reg[31]_0\(21),
      R => '0'
    );
\int_a_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(22),
      Q => \^int_a_reg[31]_0\(22),
      R => '0'
    );
\int_a_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(23),
      Q => \^int_a_reg[31]_0\(23),
      R => '0'
    );
\int_a_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(24),
      Q => \^int_a_reg[31]_0\(24),
      R => '0'
    );
\int_a_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(25),
      Q => \^int_a_reg[31]_0\(25),
      R => '0'
    );
\int_a_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(26),
      Q => \^int_a_reg[31]_0\(26),
      R => '0'
    );
\int_a_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(27),
      Q => \^int_a_reg[31]_0\(27),
      R => '0'
    );
\int_a_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(28),
      Q => \^int_a_reg[31]_0\(28),
      R => '0'
    );
\int_a_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(29),
      Q => \^int_a_reg[31]_0\(29),
      R => '0'
    );
\int_a_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(2),
      Q => \^int_a_reg[31]_0\(2),
      R => '0'
    );
\int_a_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(30),
      Q => \^int_a_reg[31]_0\(30),
      R => '0'
    );
\int_a_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(31),
      Q => \^int_a_reg[31]_0\(31),
      R => '0'
    );
\int_a_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(3),
      Q => \^int_a_reg[31]_0\(3),
      R => '0'
    );
\int_a_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(4),
      Q => \^int_a_reg[31]_0\(4),
      R => '0'
    );
\int_a_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(5),
      Q => \^int_a_reg[31]_0\(5),
      R => '0'
    );
\int_a_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(6),
      Q => \^int_a_reg[31]_0\(6),
      R => '0'
    );
\int_a_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(7),
      Q => \^int_a_reg[31]_0\(7),
      R => '0'
    );
\int_a_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(8),
      Q => \^int_a_reg[31]_0\(8),
      R => '0'
    );
\int_a_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in15_out,
      D => or0_out(9),
      Q => \^int_a_reg[31]_0\(9),
      R => '0'
    );
int_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => Q(2),
      I1 => int_ap_done1,
      I2 => s_axi_BUS_A_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      I4 => data0(1),
      O => int_ap_done_i_1_n_0
    );
int_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(0),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => s_axi_BUS_A_ARADDR(2),
      O => int_ap_done1
    );
int_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_0,
      Q => data0(1),
      R => \^sr\(0)
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => int_ap_idle_i_1_n_0
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_idle_i_1_n_0,
      Q => data0(2),
      R => \^sr\(0)
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => Q(2),
      Q => data0(3),
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBF888"
    )
        port map (
      I0 => data0(7),
      I1 => Q(2),
      I2 => int_ap_start1,
      I3 => s_axi_BUS_A_WDATA(0),
      I4 => ap_start,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => p_17_in,
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => int_ap_start_i_3_n_0,
      I3 => int_ap_start_i_4_n_0,
      I4 => \waddr_reg_n_0_[3]\,
      I5 => \waddr_reg_n_0_[2]\,
      O => int_ap_start1
    );
int_ap_start_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[5]\,
      O => int_ap_start_i_3_n_0
    );
int_ap_start_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \waddr_reg_n_0_[1]\,
      I1 => \waddr_reg_n_0_[0]\,
      O => int_ap_start_i_4_n_0
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => int_ap_start1,
      I2 => data0(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => data0(7),
      R => \^sr\(0)
    );
\int_c_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(0),
      O => \or\(0)
    );
\int_c_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(10),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(10),
      O => \or\(10)
    );
\int_c_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(11),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(11),
      O => \or\(11)
    );
\int_c_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(12),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(12),
      O => \or\(12)
    );
\int_c_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(13),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(13),
      O => \or\(13)
    );
\int_c_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(14),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(14),
      O => \or\(14)
    );
\int_c_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(15),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(15),
      O => \or\(15)
    );
\int_c_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(16),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(16),
      O => \or\(16)
    );
\int_c_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(17),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(17),
      O => \or\(17)
    );
\int_c_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(18),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(18),
      O => \or\(18)
    );
\int_c_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(19),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(19),
      O => \or\(19)
    );
\int_c_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(1),
      O => \or\(1)
    );
\int_c_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(20),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(20),
      O => \or\(20)
    );
\int_c_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(21),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(21),
      O => \or\(21)
    );
\int_c_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(22),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(22),
      O => \or\(22)
    );
\int_c_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(23),
      I1 => s_axi_BUS_A_WSTRB(2),
      I2 => \^int_c_i_reg[31]_0\(23),
      O => \or\(23)
    );
\int_c_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(24),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(24),
      O => \or\(24)
    );
\int_c_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(25),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(25),
      O => \or\(25)
    );
\int_c_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(26),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(26),
      O => \or\(26)
    );
\int_c_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(27),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(27),
      O => \or\(27)
    );
\int_c_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(28),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(28),
      O => \or\(28)
    );
\int_c_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(29),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(29),
      O => \or\(29)
    );
\int_c_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(2),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(2),
      O => \or\(2)
    );
\int_c_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(30),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(30),
      O => \or\(30)
    );
\int_c_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \int_c_i[31]_i_3_n_0\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => \waddr_reg_n_0_[1]\,
      I4 => \waddr_reg_n_0_[5]\,
      I5 => p_17_in,
      O => p_0_in13_out
    );
\int_c_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(31),
      I1 => s_axi_BUS_A_WSTRB(3),
      I2 => \^int_c_i_reg[31]_0\(31),
      O => \or\(31)
    );
\int_c_i[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \waddr_reg_n_0_[0]\,
      I1 => \waddr_reg_n_0_[2]\,
      O => \int_c_i[31]_i_3_n_0\
    );
\int_c_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(3),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(3),
      O => \or\(3)
    );
\int_c_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(4),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(4),
      O => \or\(4)
    );
\int_c_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(5),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(5),
      O => \or\(5)
    );
\int_c_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(6),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(6),
      O => \or\(6)
    );
\int_c_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(7),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => \^int_c_i_reg[31]_0\(7),
      O => \or\(7)
    );
\int_c_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(8),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(8),
      O => \or\(8)
    );
\int_c_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(9),
      I1 => s_axi_BUS_A_WSTRB(1),
      I2 => \^int_c_i_reg[31]_0\(9),
      O => \or\(9)
    );
\int_c_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(0),
      Q => \^int_c_i_reg[31]_0\(0),
      R => '0'
    );
\int_c_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(10),
      Q => \^int_c_i_reg[31]_0\(10),
      R => '0'
    );
\int_c_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(11),
      Q => \^int_c_i_reg[31]_0\(11),
      R => '0'
    );
\int_c_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(12),
      Q => \^int_c_i_reg[31]_0\(12),
      R => '0'
    );
\int_c_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(13),
      Q => \^int_c_i_reg[31]_0\(13),
      R => '0'
    );
\int_c_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(14),
      Q => \^int_c_i_reg[31]_0\(14),
      R => '0'
    );
\int_c_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(15),
      Q => \^int_c_i_reg[31]_0\(15),
      R => '0'
    );
\int_c_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(16),
      Q => \^int_c_i_reg[31]_0\(16),
      R => '0'
    );
\int_c_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(17),
      Q => \^int_c_i_reg[31]_0\(17),
      R => '0'
    );
\int_c_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(18),
      Q => \^int_c_i_reg[31]_0\(18),
      R => '0'
    );
\int_c_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(19),
      Q => \^int_c_i_reg[31]_0\(19),
      R => '0'
    );
\int_c_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(1),
      Q => \^int_c_i_reg[31]_0\(1),
      R => '0'
    );
\int_c_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(20),
      Q => \^int_c_i_reg[31]_0\(20),
      R => '0'
    );
\int_c_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(21),
      Q => \^int_c_i_reg[31]_0\(21),
      R => '0'
    );
\int_c_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(22),
      Q => \^int_c_i_reg[31]_0\(22),
      R => '0'
    );
\int_c_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(23),
      Q => \^int_c_i_reg[31]_0\(23),
      R => '0'
    );
\int_c_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(24),
      Q => \^int_c_i_reg[31]_0\(24),
      R => '0'
    );
\int_c_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(25),
      Q => \^int_c_i_reg[31]_0\(25),
      R => '0'
    );
\int_c_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(26),
      Q => \^int_c_i_reg[31]_0\(26),
      R => '0'
    );
\int_c_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(27),
      Q => \^int_c_i_reg[31]_0\(27),
      R => '0'
    );
\int_c_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(28),
      Q => \^int_c_i_reg[31]_0\(28),
      R => '0'
    );
\int_c_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(29),
      Q => \^int_c_i_reg[31]_0\(29),
      R => '0'
    );
\int_c_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(2),
      Q => \^int_c_i_reg[31]_0\(2),
      R => '0'
    );
\int_c_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(30),
      Q => \^int_c_i_reg[31]_0\(30),
      R => '0'
    );
\int_c_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(31),
      Q => \^int_c_i_reg[31]_0\(31),
      R => '0'
    );
\int_c_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(3),
      Q => \^int_c_i_reg[31]_0\(3),
      R => '0'
    );
\int_c_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(4),
      Q => \^int_c_i_reg[31]_0\(4),
      R => '0'
    );
\int_c_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(5),
      Q => \^int_c_i_reg[31]_0\(5),
      R => '0'
    );
\int_c_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(6),
      Q => \^int_c_i_reg[31]_0\(6),
      R => '0'
    );
\int_c_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(7),
      Q => \^int_c_i_reg[31]_0\(7),
      R => '0'
    );
\int_c_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(8),
      Q => \^int_c_i_reg[31]_0\(8),
      R => '0'
    );
\int_c_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => p_0_in13_out,
      D => \or\(9),
      Q => \^int_c_i_reg[31]_0\(9),
      R => '0'
    );
int_c_o_ap_vld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => E(0),
      I1 => s_axi_BUS_A_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => int_c_o_ap_vld1,
      I4 => int_c_o_ap_vld,
      O => int_c_o_ap_vld_i_1_n_0
    );
int_c_o_ap_vld_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(1),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => s_axi_BUS_A_ARADDR(5),
      I3 => s_axi_BUS_A_ARADDR(2),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => s_axi_BUS_A_ARADDR(0),
      O => int_c_o_ap_vld1
    );
int_c_o_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_c_o_ap_vld_i_1_n_0,
      Q => int_c_o_ap_vld,
      R => \^sr\(0)
    );
\int_c_o_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(0),
      Q => int_c_o(0),
      R => \^sr\(0)
    );
\int_c_o_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(10),
      Q => int_c_o(10),
      R => \^sr\(0)
    );
\int_c_o_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(11),
      Q => int_c_o(11),
      R => \^sr\(0)
    );
\int_c_o_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(12),
      Q => int_c_o(12),
      R => \^sr\(0)
    );
\int_c_o_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(13),
      Q => int_c_o(13),
      R => \^sr\(0)
    );
\int_c_o_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(14),
      Q => int_c_o(14),
      R => \^sr\(0)
    );
\int_c_o_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(15),
      Q => int_c_o(15),
      R => \^sr\(0)
    );
\int_c_o_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(16),
      Q => int_c_o(16),
      R => \^sr\(0)
    );
\int_c_o_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(17),
      Q => int_c_o(17),
      R => \^sr\(0)
    );
\int_c_o_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(18),
      Q => int_c_o(18),
      R => \^sr\(0)
    );
\int_c_o_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(19),
      Q => int_c_o(19),
      R => \^sr\(0)
    );
\int_c_o_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(1),
      Q => int_c_o(1),
      R => \^sr\(0)
    );
\int_c_o_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(20),
      Q => int_c_o(20),
      R => \^sr\(0)
    );
\int_c_o_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(21),
      Q => int_c_o(21),
      R => \^sr\(0)
    );
\int_c_o_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(22),
      Q => int_c_o(22),
      R => \^sr\(0)
    );
\int_c_o_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(23),
      Q => int_c_o(23),
      R => \^sr\(0)
    );
\int_c_o_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(24),
      Q => int_c_o(24),
      R => \^sr\(0)
    );
\int_c_o_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(25),
      Q => int_c_o(25),
      R => \^sr\(0)
    );
\int_c_o_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(26),
      Q => int_c_o(26),
      R => \^sr\(0)
    );
\int_c_o_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(27),
      Q => int_c_o(27),
      R => \^sr\(0)
    );
\int_c_o_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(28),
      Q => int_c_o(28),
      R => \^sr\(0)
    );
\int_c_o_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(29),
      Q => int_c_o(29),
      R => \^sr\(0)
    );
\int_c_o_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(2),
      Q => int_c_o(2),
      R => \^sr\(0)
    );
\int_c_o_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(30),
      Q => int_c_o(30),
      R => \^sr\(0)
    );
\int_c_o_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(31),
      Q => int_c_o(31),
      R => \^sr\(0)
    );
\int_c_o_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(3),
      Q => int_c_o(3),
      R => \^sr\(0)
    );
\int_c_o_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(4),
      Q => int_c_o(4),
      R => \^sr\(0)
    );
\int_c_o_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(5),
      Q => int_c_o(5),
      R => \^sr\(0)
    );
\int_c_o_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(6),
      Q => int_c_o(6),
      R => \^sr\(0)
    );
\int_c_o_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(7),
      Q => int_c_o(7),
      R => \^sr\(0)
    );
\int_c_o_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(8),
      Q => int_c_o(8),
      R => \^sr\(0)
    );
\int_c_o_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \int_c_o_reg[31]_0\(9),
      Q => int_c_o(9),
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => s_axi_BUS_A_WSTRB(0),
      I2 => int_gie2,
      I3 => s_axi_BUS_A_WVALID,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      I5 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[3]\,
      I5 => \waddr_reg_n_0_[0]\,
      O => int_gie2
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^sr\(0)
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => int_ier9_out,
      I2 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => int_ier9_out,
      I2 => p_0_in,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WSTRB(0),
      I1 => int_ap_start_i_3_n_0,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_c_i[31]_i_3_n_0\,
      I5 => p_17_in,
      O => int_ier9_out
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => p_0_in,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(0),
      I1 => int_isr6_out,
      I2 => Q(2),
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => s_axi_BUS_A_WSTRB(0),
      I1 => int_ap_start_i_3_n_0,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => int_ap_start_i_4_n_0,
      I5 => p_17_in,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_BUS_A_WDATA(1),
      I1 => int_isr6_out,
      I2 => p_0_in,
      I3 => Q(2),
      I4 => p_1_in,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => p_1_in,
      R => \^sr\(0)
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => p_1_in,
      I1 => \int_isr_reg_n_0_[0]\,
      I2 => int_gie_reg_n_0,
      O => interrupt
    );
\rdata_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \rdata_data[0]_i_2_n_0\,
      I1 => s_axi_BUS_A_ARADDR(2),
      I2 => \rdata_data[0]_i_3_n_0\,
      I3 => \rdata_data[1]_i_4_n_0\,
      I4 => ar_hs,
      I5 => \^s_axi_bus_a_rdata\(0),
      O => \rdata_data[0]_i_1_n_0\
    );
\rdata_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \int_ier_reg_n_0_[0]\,
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => \^int_c_i_reg[31]_0\(0),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => \rdata_data[0]_i_4_n_0\,
      O => \rdata_data[0]_i_2_n_0\
    );
\rdata_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033223000002230"
    )
        port map (
      I0 => int_c_o_ap_vld,
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => int_gie_reg_n_0,
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => \int_isr_reg_n_0_[0]\,
      O => \rdata_data[0]_i_3_n_0\
    );
\rdata_data[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^int_a_reg[31]_0\(0),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => int_c_o(0),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => ap_start,
      O => \rdata_data[0]_i_4_n_0\
    );
\rdata_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(10),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(10),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(10),
      O => \rdata_data[10]_i_1_n_0\
    );
\rdata_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(11),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(11),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(11),
      O => \rdata_data[11]_i_1_n_0\
    );
\rdata_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(12),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(12),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(12),
      O => \rdata_data[12]_i_1_n_0\
    );
\rdata_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(13),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(13),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(13),
      O => \rdata_data[13]_i_1_n_0\
    );
\rdata_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(14),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(14),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(14),
      O => \rdata_data[14]_i_1_n_0\
    );
\rdata_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(15),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(15),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(15),
      O => \rdata_data[15]_i_1_n_0\
    );
\rdata_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(16),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(16),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(16),
      O => \rdata_data[16]_i_1_n_0\
    );
\rdata_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(17),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(17),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(17),
      O => \rdata_data[17]_i_1_n_0\
    );
\rdata_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(18),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(18),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(18),
      O => \rdata_data[18]_i_1_n_0\
    );
\rdata_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(19),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(19),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(19),
      O => \rdata_data[19]_i_1_n_0\
    );
\rdata_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \rdata_data[1]_i_2_n_0\,
      I1 => s_axi_BUS_A_ARADDR(2),
      I2 => \rdata_data[1]_i_3_n_0\,
      I3 => \rdata_data[1]_i_4_n_0\,
      I4 => ar_hs,
      I5 => \^s_axi_bus_a_rdata\(1),
      O => \rdata_data[1]_i_1_n_0\
    );
\rdata_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => p_0_in,
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => \^int_c_i_reg[31]_0\(1),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => s_axi_BUS_A_ARADDR(3),
      I5 => \rdata_data[1]_i_5_n_0\,
      O => \rdata_data[1]_i_2_n_0\
    );
\rdata_data[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(4),
      I1 => s_axi_BUS_A_ARADDR(5),
      I2 => s_axi_BUS_A_ARADDR(3),
      I3 => p_1_in,
      O => \rdata_data[1]_i_3_n_0\
    );
\rdata_data[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(1),
      I1 => s_axi_BUS_A_ARADDR(0),
      O => \rdata_data[1]_i_4_n_0\
    );
\rdata_data[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^int_a_reg[31]_0\(1),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => int_c_o(1),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => data0(1),
      O => \rdata_data[1]_i_5_n_0\
    );
\rdata_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(20),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(20),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(20),
      O => \rdata_data[20]_i_1_n_0\
    );
\rdata_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(21),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(21),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(21),
      O => \rdata_data[21]_i_1_n_0\
    );
\rdata_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(22),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(22),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(22),
      O => \rdata_data[22]_i_1_n_0\
    );
\rdata_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(23),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(23),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(23),
      O => \rdata_data[23]_i_1_n_0\
    );
\rdata_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(24),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(24),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(24),
      O => \rdata_data[24]_i_1_n_0\
    );
\rdata_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(25),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(25),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(25),
      O => \rdata_data[25]_i_1_n_0\
    );
\rdata_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(26),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(26),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(26),
      O => \rdata_data[26]_i_1_n_0\
    );
\rdata_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(27),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(27),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(27),
      O => \rdata_data[27]_i_1_n_0\
    );
\rdata_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(28),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(28),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(28),
      O => \rdata_data[28]_i_1_n_0\
    );
\rdata_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(29),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(29),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(29),
      O => \rdata_data[29]_i_1_n_0\
    );
\rdata_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => \^int_c_i_reg[31]_0\(2),
      I3 => s_axi_BUS_A_ARADDR(3),
      I4 => \rdata_data[2]_i_2_n_0\,
      O => \rdata_data[2]_i_1_n_0\
    );
\rdata_data[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^int_a_reg[31]_0\(2),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => int_c_o(2),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => data0(2),
      O => \rdata_data[2]_i_2_n_0\
    );
\rdata_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(30),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(30),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(30),
      O => \rdata_data[30]_i_1_n_0\
    );
\rdata_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_BUS_A_ARVALID,
      I2 => s_axi_BUS_A_ARADDR(1),
      I3 => s_axi_BUS_A_ARADDR(0),
      I4 => s_axi_BUS_A_ARADDR(2),
      O => \rdata_data[31]_i_1_n_0\
    );
\rdata_data[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_BUS_A_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata_data[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(31),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(31),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(31),
      O => \rdata_data[31]_i_3_n_0\
    );
\rdata_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => \^int_c_i_reg[31]_0\(3),
      I3 => s_axi_BUS_A_ARADDR(3),
      I4 => \rdata_data[3]_i_2_n_0\,
      O => \rdata_data[3]_i_1_n_0\
    );
\rdata_data[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^int_a_reg[31]_0\(3),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => int_c_o(3),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => data0(3),
      O => \rdata_data[3]_i_2_n_0\
    );
\rdata_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(4),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(4),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(4),
      O => \rdata_data[4]_i_1_n_0\
    );
\rdata_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(5),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(5),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(5),
      O => \rdata_data[5]_i_1_n_0\
    );
\rdata_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(6),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(6),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(6),
      O => \rdata_data[6]_i_1_n_0\
    );
\rdata_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => s_axi_BUS_A_ARADDR(5),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => \^int_c_i_reg[31]_0\(7),
      I3 => s_axi_BUS_A_ARADDR(3),
      I4 => \rdata_data[7]_i_2_n_0\,
      O => \rdata_data[7]_i_1_n_0\
    );
\rdata_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^int_a_reg[31]_0\(7),
      I1 => s_axi_BUS_A_ARADDR(4),
      I2 => int_c_o(7),
      I3 => s_axi_BUS_A_ARADDR(5),
      I4 => data0(7),
      O => \rdata_data[7]_i_2_n_0\
    );
\rdata_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(8),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(8),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(8),
      O => \rdata_data[8]_i_1_n_0\
    );
\rdata_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033B8000000B800"
    )
        port map (
      I0 => \^int_c_i_reg[31]_0\(9),
      I1 => s_axi_BUS_A_ARADDR(3),
      I2 => \^int_a_reg[31]_0\(9),
      I3 => s_axi_BUS_A_ARADDR(4),
      I4 => s_axi_BUS_A_ARADDR(5),
      I5 => int_c_o(9),
      O => \rdata_data[9]_i_1_n_0\
    );
\rdata_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata_data[0]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(0),
      R => '0'
    );
\rdata_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[10]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(10),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[11]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(11),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[12]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(12),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[13]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(13),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[14]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(14),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[15]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(15),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[16]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(16),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[17]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(17),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[18]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(18),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[19]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(19),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rdata_data[1]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(1),
      R => '0'
    );
\rdata_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[20]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(20),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[21]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(21),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[22]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(22),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[23]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(23),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[24]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(24),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[25]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(25),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[26]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(26),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[27]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(27),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[28]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(28),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[29]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(29),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[2]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(2),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[30]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(30),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[31]_i_3_n_0\,
      Q => \^s_axi_bus_a_rdata\(31),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[3]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(3),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[4]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(4),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[5]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(5),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[6]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(6),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[7]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(7),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[8]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(8),
      R => \rdata_data[31]_i_1_n_0\
    );
\rdata_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata_data[9]_i_1_n_0\,
      Q => \^s_axi_bus_a_rdata\(9),
      R => \rdata_data[31]_i_1_n_0\
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_BUS_A_AWVALID,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_BUS_A_AWADDR(5),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_AWREADY : out STD_LOGIC;
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_ARVALID : in STD_LOGIC;
    s_axi_BUS_A_ARREADY : out STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_BUS_A_RVALID : out STD_LOGIC;
    s_axi_BUS_A_RREADY : in STD_LOGIC;
    s_axi_BUS_A_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_BUS_A_ADDR_WIDTH : integer;
  attribute C_S_AXI_BUS_A_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA : entity is 6;
  attribute C_S_AXI_BUS_A_DATA_WIDTH : integer;
  attribute C_S_AXI_BUS_A_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA is
  signal \<const0>\ : STD_LOGIC;
  signal ARESET : STD_LOGIC;
  signal FIR16BitA_BUS_A_s_axi_U_n_105 : STD_LOGIC;
  signal FIR16BitA_BUS_A_s_axi_U_n_108 : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal a_read_reg_51 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal add_ln11_fu_45_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_done : STD_LOGIC;
  signal c_0_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal c_1_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \c_1_data_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \c_1_data_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \c_1_data_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \c_1_data_reg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \c_1_data_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \c_1_data_reg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \c_1_data_reg_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \c_1_data_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \c_1_data_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \c_1_data_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \c_1_data_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \c_1_data_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal c_1_vld_reg : STD_LOGIC;
  signal c_1_vld_reg2 : STD_LOGIC;
  signal c_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_c_1_data_reg_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
begin
  s_axi_BUS_A_BRESP(1) <= \<const0>\;
  s_axi_BUS_A_BRESP(0) <= \<const0>\;
  s_axi_BUS_A_RRESP(1) <= \<const0>\;
  s_axi_BUS_A_RRESP(0) <= \<const0>\;
FIR16BitA_BUS_A_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA_BUS_A_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      E(0) => c_1_vld_reg,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_BUS_A_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_BUS_A_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_BUS_A_WREADY,
      Q(2) => ap_done,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      SR(0) => ARESET,
      \ap_CS_fsm_reg[1]\(0) => FIR16BitA_BUS_A_s_axi_U_n_108,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      c_1_vld_reg_reg => FIR16BitA_BUS_A_s_axi_U_n_105,
      \int_a_reg[31]_0\(31 downto 0) => a(31 downto 0),
      int_ap_start_reg_0(0) => ap_NS_fsm1,
      int_ap_start_reg_1(0) => c_1_vld_reg2,
      \int_c_i_reg[31]_0\(31 downto 0) => c_i(31 downto 0),
      \int_c_o_reg[31]_0\(31 downto 0) => c_1_data_reg(31 downto 0),
      interrupt => interrupt,
      s_axi_BUS_A_ARADDR(5 downto 0) => s_axi_BUS_A_ARADDR(5 downto 0),
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_AWADDR(5 downto 0) => s_axi_BUS_A_AWADDR(5 downto 0),
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_AWVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_BREADY,
      s_axi_BUS_A_BVALID => s_axi_BUS_A_BVALID,
      s_axi_BUS_A_RDATA(31 downto 0) => s_axi_BUS_A_RDATA(31 downto 0),
      s_axi_BUS_A_RREADY => s_axi_BUS_A_RREADY,
      s_axi_BUS_A_RVALID => s_axi_BUS_A_RVALID,
      s_axi_BUS_A_WDATA(31 downto 0) => s_axi_BUS_A_WDATA(31 downto 0),
      s_axi_BUS_A_WSTRB(3 downto 0) => s_axi_BUS_A_WSTRB(3 downto 0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\a_read_reg_51_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(0),
      Q => a_read_reg_51(0),
      R => '0'
    );
\a_read_reg_51_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(10),
      Q => a_read_reg_51(10),
      R => '0'
    );
\a_read_reg_51_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(11),
      Q => a_read_reg_51(11),
      R => '0'
    );
\a_read_reg_51_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(12),
      Q => a_read_reg_51(12),
      R => '0'
    );
\a_read_reg_51_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(13),
      Q => a_read_reg_51(13),
      R => '0'
    );
\a_read_reg_51_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(14),
      Q => a_read_reg_51(14),
      R => '0'
    );
\a_read_reg_51_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(15),
      Q => a_read_reg_51(15),
      R => '0'
    );
\a_read_reg_51_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(16),
      Q => a_read_reg_51(16),
      R => '0'
    );
\a_read_reg_51_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(17),
      Q => a_read_reg_51(17),
      R => '0'
    );
\a_read_reg_51_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(18),
      Q => a_read_reg_51(18),
      R => '0'
    );
\a_read_reg_51_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(19),
      Q => a_read_reg_51(19),
      R => '0'
    );
\a_read_reg_51_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(1),
      Q => a_read_reg_51(1),
      R => '0'
    );
\a_read_reg_51_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(20),
      Q => a_read_reg_51(20),
      R => '0'
    );
\a_read_reg_51_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(21),
      Q => a_read_reg_51(21),
      R => '0'
    );
\a_read_reg_51_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(22),
      Q => a_read_reg_51(22),
      R => '0'
    );
\a_read_reg_51_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(23),
      Q => a_read_reg_51(23),
      R => '0'
    );
\a_read_reg_51_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(24),
      Q => a_read_reg_51(24),
      R => '0'
    );
\a_read_reg_51_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(25),
      Q => a_read_reg_51(25),
      R => '0'
    );
\a_read_reg_51_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(26),
      Q => a_read_reg_51(26),
      R => '0'
    );
\a_read_reg_51_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(27),
      Q => a_read_reg_51(27),
      R => '0'
    );
\a_read_reg_51_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(28),
      Q => a_read_reg_51(28),
      R => '0'
    );
\a_read_reg_51_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(29),
      Q => a_read_reg_51(29),
      R => '0'
    );
\a_read_reg_51_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(2),
      Q => a_read_reg_51(2),
      R => '0'
    );
\a_read_reg_51_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(30),
      Q => a_read_reg_51(30),
      R => '0'
    );
\a_read_reg_51_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(31),
      Q => a_read_reg_51(31),
      R => '0'
    );
\a_read_reg_51_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(3),
      Q => a_read_reg_51(3),
      R => '0'
    );
\a_read_reg_51_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(4),
      Q => a_read_reg_51(4),
      R => '0'
    );
\a_read_reg_51_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(5),
      Q => a_read_reg_51(5),
      R => '0'
    );
\a_read_reg_51_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(6),
      Q => a_read_reg_51(6),
      R => '0'
    );
\a_read_reg_51_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(7),
      Q => a_read_reg_51(7),
      R => '0'
    );
\a_read_reg_51_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(8),
      Q => a_read_reg_51(8),
      R => '0'
    );
\a_read_reg_51_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => a(9),
      Q => a_read_reg_51(9),
      R => '0'
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ARESET
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ARESET
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state2,
      Q => ap_done,
      R => ARESET
    );
\c_0_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(0),
      Q => c_0_data_reg(0),
      R => '0'
    );
\c_0_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(10),
      Q => c_0_data_reg(10),
      R => '0'
    );
\c_0_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(11),
      Q => c_0_data_reg(11),
      R => '0'
    );
\c_0_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(12),
      Q => c_0_data_reg(12),
      R => '0'
    );
\c_0_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(13),
      Q => c_0_data_reg(13),
      R => '0'
    );
\c_0_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(14),
      Q => c_0_data_reg(14),
      R => '0'
    );
\c_0_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(15),
      Q => c_0_data_reg(15),
      R => '0'
    );
\c_0_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(16),
      Q => c_0_data_reg(16),
      R => '0'
    );
\c_0_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(17),
      Q => c_0_data_reg(17),
      R => '0'
    );
\c_0_data_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(18),
      Q => c_0_data_reg(18),
      R => '0'
    );
\c_0_data_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(19),
      Q => c_0_data_reg(19),
      R => '0'
    );
\c_0_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(1),
      Q => c_0_data_reg(1),
      R => '0'
    );
\c_0_data_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(20),
      Q => c_0_data_reg(20),
      R => '0'
    );
\c_0_data_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(21),
      Q => c_0_data_reg(21),
      R => '0'
    );
\c_0_data_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(22),
      Q => c_0_data_reg(22),
      R => '0'
    );
\c_0_data_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(23),
      Q => c_0_data_reg(23),
      R => '0'
    );
\c_0_data_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(24),
      Q => c_0_data_reg(24),
      R => '0'
    );
\c_0_data_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(25),
      Q => c_0_data_reg(25),
      R => '0'
    );
\c_0_data_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(26),
      Q => c_0_data_reg(26),
      R => '0'
    );
\c_0_data_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(27),
      Q => c_0_data_reg(27),
      R => '0'
    );
\c_0_data_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(28),
      Q => c_0_data_reg(28),
      R => '0'
    );
\c_0_data_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(29),
      Q => c_0_data_reg(29),
      R => '0'
    );
\c_0_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(2),
      Q => c_0_data_reg(2),
      R => '0'
    );
\c_0_data_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(30),
      Q => c_0_data_reg(30),
      R => '0'
    );
\c_0_data_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(31),
      Q => c_0_data_reg(31),
      R => '0'
    );
\c_0_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(3),
      Q => c_0_data_reg(3),
      R => '0'
    );
\c_0_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(4),
      Q => c_0_data_reg(4),
      R => '0'
    );
\c_0_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(5),
      Q => c_0_data_reg(5),
      R => '0'
    );
\c_0_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(6),
      Q => c_0_data_reg(6),
      R => '0'
    );
\c_0_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(7),
      Q => c_0_data_reg(7),
      R => '0'
    );
\c_0_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(8),
      Q => c_0_data_reg(8),
      R => '0'
    );
\c_0_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => c_1_vld_reg2,
      D => c_i(9),
      Q => c_0_data_reg(9),
      R => '0'
    );
\c_1_data_reg[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(11),
      I1 => a_read_reg_51(11),
      O => \c_1_data_reg[11]_i_2_n_0\
    );
\c_1_data_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(10),
      I1 => a_read_reg_51(10),
      O => \c_1_data_reg[11]_i_3_n_0\
    );
\c_1_data_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(9),
      I1 => a_read_reg_51(9),
      O => \c_1_data_reg[11]_i_4_n_0\
    );
\c_1_data_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(8),
      I1 => a_read_reg_51(8),
      O => \c_1_data_reg[11]_i_5_n_0\
    );
\c_1_data_reg[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(15),
      I1 => a_read_reg_51(15),
      O => \c_1_data_reg[15]_i_2_n_0\
    );
\c_1_data_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(14),
      I1 => a_read_reg_51(14),
      O => \c_1_data_reg[15]_i_3_n_0\
    );
\c_1_data_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(13),
      I1 => a_read_reg_51(13),
      O => \c_1_data_reg[15]_i_4_n_0\
    );
\c_1_data_reg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(12),
      I1 => a_read_reg_51(12),
      O => \c_1_data_reg[15]_i_5_n_0\
    );
\c_1_data_reg[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(19),
      I1 => a_read_reg_51(19),
      O => \c_1_data_reg[19]_i_2_n_0\
    );
\c_1_data_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(18),
      I1 => a_read_reg_51(18),
      O => \c_1_data_reg[19]_i_3_n_0\
    );
\c_1_data_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(17),
      I1 => a_read_reg_51(17),
      O => \c_1_data_reg[19]_i_4_n_0\
    );
\c_1_data_reg[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(16),
      I1 => a_read_reg_51(16),
      O => \c_1_data_reg[19]_i_5_n_0\
    );
\c_1_data_reg[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(23),
      I1 => a_read_reg_51(23),
      O => \c_1_data_reg[23]_i_2_n_0\
    );
\c_1_data_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(22),
      I1 => a_read_reg_51(22),
      O => \c_1_data_reg[23]_i_3_n_0\
    );
\c_1_data_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(21),
      I1 => a_read_reg_51(21),
      O => \c_1_data_reg[23]_i_4_n_0\
    );
\c_1_data_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(20),
      I1 => a_read_reg_51(20),
      O => \c_1_data_reg[23]_i_5_n_0\
    );
\c_1_data_reg[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(27),
      I1 => a_read_reg_51(27),
      O => \c_1_data_reg[27]_i_2_n_0\
    );
\c_1_data_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(26),
      I1 => a_read_reg_51(26),
      O => \c_1_data_reg[27]_i_3_n_0\
    );
\c_1_data_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(25),
      I1 => a_read_reg_51(25),
      O => \c_1_data_reg[27]_i_4_n_0\
    );
\c_1_data_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(24),
      I1 => a_read_reg_51(24),
      O => \c_1_data_reg[27]_i_5_n_0\
    );
\c_1_data_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(31),
      I1 => a_read_reg_51(31),
      O => \c_1_data_reg[31]_i_3_n_0\
    );
\c_1_data_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(30),
      I1 => a_read_reg_51(30),
      O => \c_1_data_reg[31]_i_4_n_0\
    );
\c_1_data_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(29),
      I1 => a_read_reg_51(29),
      O => \c_1_data_reg[31]_i_5_n_0\
    );
\c_1_data_reg[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(28),
      I1 => a_read_reg_51(28),
      O => \c_1_data_reg[31]_i_6_n_0\
    );
\c_1_data_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(3),
      I1 => a_read_reg_51(3),
      O => \c_1_data_reg[3]_i_2_n_0\
    );
\c_1_data_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(2),
      I1 => a_read_reg_51(2),
      O => \c_1_data_reg[3]_i_3_n_0\
    );
\c_1_data_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(1),
      I1 => a_read_reg_51(1),
      O => \c_1_data_reg[3]_i_4_n_0\
    );
\c_1_data_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(0),
      I1 => a_read_reg_51(0),
      O => \c_1_data_reg[3]_i_5_n_0\
    );
\c_1_data_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(7),
      I1 => a_read_reg_51(7),
      O => \c_1_data_reg[7]_i_2_n_0\
    );
\c_1_data_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(6),
      I1 => a_read_reg_51(6),
      O => \c_1_data_reg[7]_i_3_n_0\
    );
\c_1_data_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(5),
      I1 => a_read_reg_51(5),
      O => \c_1_data_reg[7]_i_4_n_0\
    );
\c_1_data_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c_0_data_reg(4),
      I1 => a_read_reg_51(4),
      O => \c_1_data_reg[7]_i_5_n_0\
    );
\c_1_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(0),
      Q => c_1_data_reg(0),
      R => '0'
    );
\c_1_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(10),
      Q => c_1_data_reg(10),
      R => '0'
    );
\c_1_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(11),
      Q => c_1_data_reg(11),
      R => '0'
    );
\c_1_data_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_1_data_reg_reg[7]_i_1_n_0\,
      CO(3) => \c_1_data_reg_reg[11]_i_1_n_0\,
      CO(2) => \c_1_data_reg_reg[11]_i_1_n_1\,
      CO(1) => \c_1_data_reg_reg[11]_i_1_n_2\,
      CO(0) => \c_1_data_reg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => c_0_data_reg(11 downto 8),
      O(3 downto 0) => add_ln11_fu_45_p2(11 downto 8),
      S(3) => \c_1_data_reg[11]_i_2_n_0\,
      S(2) => \c_1_data_reg[11]_i_3_n_0\,
      S(1) => \c_1_data_reg[11]_i_4_n_0\,
      S(0) => \c_1_data_reg[11]_i_5_n_0\
    );
\c_1_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(12),
      Q => c_1_data_reg(12),
      R => '0'
    );
\c_1_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(13),
      Q => c_1_data_reg(13),
      R => '0'
    );
\c_1_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(14),
      Q => c_1_data_reg(14),
      R => '0'
    );
\c_1_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(15),
      Q => c_1_data_reg(15),
      R => '0'
    );
\c_1_data_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_1_data_reg_reg[11]_i_1_n_0\,
      CO(3) => \c_1_data_reg_reg[15]_i_1_n_0\,
      CO(2) => \c_1_data_reg_reg[15]_i_1_n_1\,
      CO(1) => \c_1_data_reg_reg[15]_i_1_n_2\,
      CO(0) => \c_1_data_reg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => c_0_data_reg(15 downto 12),
      O(3 downto 0) => add_ln11_fu_45_p2(15 downto 12),
      S(3) => \c_1_data_reg[15]_i_2_n_0\,
      S(2) => \c_1_data_reg[15]_i_3_n_0\,
      S(1) => \c_1_data_reg[15]_i_4_n_0\,
      S(0) => \c_1_data_reg[15]_i_5_n_0\
    );
\c_1_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(16),
      Q => c_1_data_reg(16),
      R => '0'
    );
\c_1_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(17),
      Q => c_1_data_reg(17),
      R => '0'
    );
\c_1_data_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(18),
      Q => c_1_data_reg(18),
      R => '0'
    );
\c_1_data_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(19),
      Q => c_1_data_reg(19),
      R => '0'
    );
\c_1_data_reg_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_1_data_reg_reg[15]_i_1_n_0\,
      CO(3) => \c_1_data_reg_reg[19]_i_1_n_0\,
      CO(2) => \c_1_data_reg_reg[19]_i_1_n_1\,
      CO(1) => \c_1_data_reg_reg[19]_i_1_n_2\,
      CO(0) => \c_1_data_reg_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => c_0_data_reg(19 downto 16),
      O(3 downto 0) => add_ln11_fu_45_p2(19 downto 16),
      S(3) => \c_1_data_reg[19]_i_2_n_0\,
      S(2) => \c_1_data_reg[19]_i_3_n_0\,
      S(1) => \c_1_data_reg[19]_i_4_n_0\,
      S(0) => \c_1_data_reg[19]_i_5_n_0\
    );
\c_1_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(1),
      Q => c_1_data_reg(1),
      R => '0'
    );
\c_1_data_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(20),
      Q => c_1_data_reg(20),
      R => '0'
    );
\c_1_data_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(21),
      Q => c_1_data_reg(21),
      R => '0'
    );
\c_1_data_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(22),
      Q => c_1_data_reg(22),
      R => '0'
    );
\c_1_data_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(23),
      Q => c_1_data_reg(23),
      R => '0'
    );
\c_1_data_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_1_data_reg_reg[19]_i_1_n_0\,
      CO(3) => \c_1_data_reg_reg[23]_i_1_n_0\,
      CO(2) => \c_1_data_reg_reg[23]_i_1_n_1\,
      CO(1) => \c_1_data_reg_reg[23]_i_1_n_2\,
      CO(0) => \c_1_data_reg_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => c_0_data_reg(23 downto 20),
      O(3 downto 0) => add_ln11_fu_45_p2(23 downto 20),
      S(3) => \c_1_data_reg[23]_i_2_n_0\,
      S(2) => \c_1_data_reg[23]_i_3_n_0\,
      S(1) => \c_1_data_reg[23]_i_4_n_0\,
      S(0) => \c_1_data_reg[23]_i_5_n_0\
    );
\c_1_data_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(24),
      Q => c_1_data_reg(24),
      R => '0'
    );
\c_1_data_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(25),
      Q => c_1_data_reg(25),
      R => '0'
    );
\c_1_data_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(26),
      Q => c_1_data_reg(26),
      R => '0'
    );
\c_1_data_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(27),
      Q => c_1_data_reg(27),
      R => '0'
    );
\c_1_data_reg_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_1_data_reg_reg[23]_i_1_n_0\,
      CO(3) => \c_1_data_reg_reg[27]_i_1_n_0\,
      CO(2) => \c_1_data_reg_reg[27]_i_1_n_1\,
      CO(1) => \c_1_data_reg_reg[27]_i_1_n_2\,
      CO(0) => \c_1_data_reg_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => c_0_data_reg(27 downto 24),
      O(3 downto 0) => add_ln11_fu_45_p2(27 downto 24),
      S(3) => \c_1_data_reg[27]_i_2_n_0\,
      S(2) => \c_1_data_reg[27]_i_3_n_0\,
      S(1) => \c_1_data_reg[27]_i_4_n_0\,
      S(0) => \c_1_data_reg[27]_i_5_n_0\
    );
\c_1_data_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(28),
      Q => c_1_data_reg(28),
      R => '0'
    );
\c_1_data_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(29),
      Q => c_1_data_reg(29),
      R => '0'
    );
\c_1_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(2),
      Q => c_1_data_reg(2),
      R => '0'
    );
\c_1_data_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(30),
      Q => c_1_data_reg(30),
      R => '0'
    );
\c_1_data_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(31),
      Q => c_1_data_reg(31),
      R => '0'
    );
\c_1_data_reg_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_1_data_reg_reg[27]_i_1_n_0\,
      CO(3) => \NLW_c_1_data_reg_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \c_1_data_reg_reg[31]_i_2_n_1\,
      CO(1) => \c_1_data_reg_reg[31]_i_2_n_2\,
      CO(0) => \c_1_data_reg_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => c_0_data_reg(30 downto 28),
      O(3 downto 0) => add_ln11_fu_45_p2(31 downto 28),
      S(3) => \c_1_data_reg[31]_i_3_n_0\,
      S(2) => \c_1_data_reg[31]_i_4_n_0\,
      S(1) => \c_1_data_reg[31]_i_5_n_0\,
      S(0) => \c_1_data_reg[31]_i_6_n_0\
    );
\c_1_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(3),
      Q => c_1_data_reg(3),
      R => '0'
    );
\c_1_data_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \c_1_data_reg_reg[3]_i_1_n_0\,
      CO(2) => \c_1_data_reg_reg[3]_i_1_n_1\,
      CO(1) => \c_1_data_reg_reg[3]_i_1_n_2\,
      CO(0) => \c_1_data_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => c_0_data_reg(3 downto 0),
      O(3 downto 0) => add_ln11_fu_45_p2(3 downto 0),
      S(3) => \c_1_data_reg[3]_i_2_n_0\,
      S(2) => \c_1_data_reg[3]_i_3_n_0\,
      S(1) => \c_1_data_reg[3]_i_4_n_0\,
      S(0) => \c_1_data_reg[3]_i_5_n_0\
    );
\c_1_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(4),
      Q => c_1_data_reg(4),
      R => '0'
    );
\c_1_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(5),
      Q => c_1_data_reg(5),
      R => '0'
    );
\c_1_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(6),
      Q => c_1_data_reg(6),
      R => '0'
    );
\c_1_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(7),
      Q => c_1_data_reg(7),
      R => '0'
    );
\c_1_data_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_1_data_reg_reg[3]_i_1_n_0\,
      CO(3) => \c_1_data_reg_reg[7]_i_1_n_0\,
      CO(2) => \c_1_data_reg_reg[7]_i_1_n_1\,
      CO(1) => \c_1_data_reg_reg[7]_i_1_n_2\,
      CO(0) => \c_1_data_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => c_0_data_reg(7 downto 4),
      O(3 downto 0) => add_ln11_fu_45_p2(7 downto 4),
      S(3) => \c_1_data_reg[7]_i_2_n_0\,
      S(2) => \c_1_data_reg[7]_i_3_n_0\,
      S(1) => \c_1_data_reg[7]_i_4_n_0\,
      S(0) => \c_1_data_reg[7]_i_5_n_0\
    );
\c_1_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(8),
      Q => c_1_data_reg(8),
      R => '0'
    );
\c_1_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => FIR16BitA_BUS_A_s_axi_U_n_108,
      D => add_ln11_fu_45_p2(9),
      Q => c_1_data_reg(9),
      R => '0'
    );
c_1_vld_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => FIR16BitA_BUS_A_s_axi_U_n_105,
      Q => c_1_vld_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_BUS_A_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_BUS_A_AWVALID : in STD_LOGIC;
    s_axi_BUS_A_AWREADY : out STD_LOGIC;
    s_axi_BUS_A_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_BUS_A_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_BUS_A_WVALID : in STD_LOGIC;
    s_axi_BUS_A_WREADY : out STD_LOGIC;
    s_axi_BUS_A_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_BUS_A_BVALID : out STD_LOGIC;
    s_axi_BUS_A_BREADY : in STD_LOGIC;
    s_axi_BUS_A_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Echo_Server_FIR16BitA_0_0,FIR16BitA,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "FIR16BitA,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S_AXI_BUS_A_ADDR_WIDTH : integer;
  attribute C_S_AXI_BUS_A_ADDR_WIDTH of U0 : label is 6;
  attribute C_S_AXI_BUS_A_DATA_WIDTH : integer;
  attribute C_S_AXI_BUS_A_DATA_WIDTH of U0 : label is 32;
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS_A, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Echo_Server_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of s_axi_BUS_A_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARREADY";
  attribute x_interface_info of s_axi_BUS_A_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARVALID";
  attribute x_interface_info of s_axi_BUS_A_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWREADY";
  attribute x_interface_info of s_axi_BUS_A_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWVALID";
  attribute x_interface_info of s_axi_BUS_A_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BREADY";
  attribute x_interface_info of s_axi_BUS_A_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BVALID";
  attribute x_interface_info of s_axi_BUS_A_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RREADY";
  attribute x_interface_info of s_axi_BUS_A_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RVALID";
  attribute x_interface_info of s_axi_BUS_A_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WREADY";
  attribute x_interface_info of s_axi_BUS_A_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WVALID";
  attribute x_interface_info of s_axi_BUS_A_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A ARADDR";
  attribute x_interface_info of s_axi_BUS_A_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A AWADDR";
  attribute x_interface_parameter of s_axi_BUS_A_AWADDR : signal is "XIL_INTERFACENAME s_axi_BUS_A, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Echo_Server_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_BUS_A_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A BRESP";
  attribute x_interface_info of s_axi_BUS_A_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RDATA";
  attribute x_interface_info of s_axi_BUS_A_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A RRESP";
  attribute x_interface_info of s_axi_BUS_A_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WDATA";
  attribute x_interface_info of s_axi_BUS_A_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_BUS_A WSTRB";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIR16BitA
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_BUS_A_ARADDR(5 downto 0) => s_axi_BUS_A_ARADDR(5 downto 0),
      s_axi_BUS_A_ARREADY => s_axi_BUS_A_ARREADY,
      s_axi_BUS_A_ARVALID => s_axi_BUS_A_ARVALID,
      s_axi_BUS_A_AWADDR(5 downto 0) => s_axi_BUS_A_AWADDR(5 downto 0),
      s_axi_BUS_A_AWREADY => s_axi_BUS_A_AWREADY,
      s_axi_BUS_A_AWVALID => s_axi_BUS_A_AWVALID,
      s_axi_BUS_A_BREADY => s_axi_BUS_A_BREADY,
      s_axi_BUS_A_BRESP(1 downto 0) => s_axi_BUS_A_BRESP(1 downto 0),
      s_axi_BUS_A_BVALID => s_axi_BUS_A_BVALID,
      s_axi_BUS_A_RDATA(31 downto 0) => s_axi_BUS_A_RDATA(31 downto 0),
      s_axi_BUS_A_RREADY => s_axi_BUS_A_RREADY,
      s_axi_BUS_A_RRESP(1 downto 0) => s_axi_BUS_A_RRESP(1 downto 0),
      s_axi_BUS_A_RVALID => s_axi_BUS_A_RVALID,
      s_axi_BUS_A_WDATA(31 downto 0) => s_axi_BUS_A_WDATA(31 downto 0),
      s_axi_BUS_A_WREADY => s_axi_BUS_A_WREADY,
      s_axi_BUS_A_WSTRB(3 downto 0) => s_axi_BUS_A_WSTRB(3 downto 0),
      s_axi_BUS_A_WVALID => s_axi_BUS_A_WVALID
    );
end STRUCTURE;
