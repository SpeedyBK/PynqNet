----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.06.2020 10:32:32
-- Design Name: 
-- Module Name: ETHController - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ETHController is
  Port ( clk_i : in std_logic;
         rst_i : in std_logic;
         have_byte_i : in std_logic;
         wr_done_i : in std_logic;
         wr_data_o : out std_logic_vector(7 downto 0);
         rd_valid_i : in std_logic;
         rd_stop_o : out std_logic;
         rd_data_i : in std_logic_vector(7 downto 0);
         status_debug_o : out std_logic_vector(1 downto 0);
         status_error_o : out std_logic;
         status_stage_o : out std_logic_vector(3 downto 0));
end ETHController;

architecture Behavioral of ETHController is

-- Constants
constant BYTE_SIZE : integer := 8;
constant FRAME_SIZE : integer := 90;

-- Instructions
constant WCRU     : std_logic_vector(7 downto 0) := "00100010";
constant RCRU     : std_logic_vector(7 downto 0) := "00100000";
constant BFSU     : std_logic_vector(7 downto 0) := "00100100";
constant WUDADATA : std_logic_vector(7 downto 0) := "00110010";
constant SETTXRTS : std_logic_vector(7 downto 0) := "11010100";

-- Addresses
constant EUDASTL  : std_logic_vector(7 downto 0) := x"16";
constant ESTATH   : std_logic_vector(7 downto 0) := x"1b";
constant ECON1L   : std_logic_vector(7 downto 0) := x"1e";
constant ECON2L   : std_logic_vector(7 downto 0) := x"6e";
constant ECON2H   : std_logic_vector(7 downto 0) := x"6f";
constant ETXSTL   : std_logic_vector(7 downto 0) := x"00";
constant ETXWIREL : std_logic_vector(7 downto 0) := x"14";
constant MACON2L  : std_logic_vector(7 downto 0) := x"42";
constant MAMXFLL  : std_logic_vector(7 downto 0) := x"4a";
constant EIEL     : std_logic_vector(7 downto 0) := x"72";
constant EIEH     : std_logic_vector(7 downto 0) := x"73";

-- Masks
constant TXCRCEN  : std_logic_vector(7 downto 0) := "00010000"; -- MACON2L
constant PADCFG   : std_logic_vector(7 downto 0) := "11100000"; -- MACON2L
constant CLKRDY   : std_logic_vector(7 downto 0) := "00010000"; -- ESTATH
constant ETHRST   : std_logic_vector(7 downto 0) := "00010000"; -- ECON2L
constant RXEN     : std_logic_vector(7 downto 0) := "00000001"; -- ECON1L
constant TXMAC    : std_logic_vector(7 downto 0) := "00100000"; -- ECON2H
constant TXIE     : std_logic_vector(7 downto 0) := "00001000"; -- EIEL
constant TXABTIE  : std_logic_vector(7 downto 0) := "00000100"; -- EIEL
constant INTIE    : std_logic_vector(7 downto 0) := "10000000"; -- EIEH

    -- Default control register values
    constant MACON2L_d : std_logic_vector(7 downto 0) := x"b2";

-- Ethernet Example Frame
type frame_t is array (FRAME_SIZE-1  downto 0) of std_logic_vector(BYTE_SIZE-1 downto 0);
constant ExampleFrame : frame_t := ( x"33", x"33", x"00", x"00", x"00", x"16", -- DST-MAC Address
                                     x"c0", x"ff", x"ee", x"c0", x"ff", x"ee", -- SRC-MAC Address
                                     x"86", x"dd",                             -- Ethernet Type (IPv6)
                                     x"60", x"00", x"00", x"00",               -- Version=6, Trafic class=0x00, Flow label=0x00000
                                     x"00", x"24",                             -- Payload length (0x24)                                  
                                     x"00",                                    -- Next header
                                     x"01",                                    -- Hop limit (1)
                                     x"11", x"11", x"11", x"00", x"00", x"00", 
                                     x"00", x"00", x"00", x"00", x"00", x"00", 
                                     x"00", x"00", x"00", x"00",               -- Source (::)
                                     x"ff", x"02", x"00", x"00", x"00", x"00", 
                                     x"00", x"00", x"00", x"00", x"00", x"00", 
                                     x"00", x"00", x"00", x"16",               -- Destination (ff02::16)
                                     x"3a",                                    -- Next header (ICMPv6)
                                     x"00",                                    -- Length (0)
                                     x"05",                                    -- Router alert (0x05)
                                     x"02",                                    -- Length (2)
                                     x"00", x"00",                             -- Router alert (MLD)
                                     x"01",                                    -- PadN
                                     x"00",                                    -- Length (0)
                                     x"8f",                                    -- Type (Multicast listener report message v2)
                                     x"00",                                    -- Code (0)
                                     x"b4", x"c4",                             -- Checksum
                                     x"00", x"00",                             -- Reserved
                                     x"00", x"01",                             -- Number of multicast address records (1)
                                     x"04",                                    -- Record type (Changed to exclude)
                                     x"00",                                    -- AUX data len (0)
                                     x"00", x"00",                             -- Number of Sources (0)
                                     x"ff", x"02", x"00", x"00", x"00", x"00",
                                     x"00", x"00", x"00", x"00", x"00", x"01",
                                     x"ff", x"00", x"ba", x"c5"               -- Multicast address (ff02::1:ff00:bac5)
                                   );

-- States:
type control_state_t is ( init1,  init2,  init3,  init4,  init5,  init6,  init7,  init8,  init9, init10,
                         init11, init12, init13, init14, init15, init16, init17, init18, init19, init20,
                         init21, init22, init23, init24, init25, init26, init27, init28, init29, init30,
                         init31,  init0, init3a, init4a, init4b, init8a, init8b, init16a, init16b, init0a,
                         init14a, 
                         build0, build1, build2, build3, build4, build5, build6, build7, build8, build9, 
                         build10, build11, build12, build13, build14, --build15, build16, build17, build18, 
                         build19, build24, build25, build6a, build10a, build21a, build7a, build23, build20,
                         build21, build22,
                         verify0, verify0a, verify1, verify2, verify3, verify4, verify5, verify6, verify7,
                         verify8, verify9, term, debug0, debug1);
                         
type comm_state_t is ( idle, reading, writing, delay);

-- Signals 
signal control_state : control_state_t := init0;
signal comm_state : comm_state_t := idle;
signal debug_var : std_logic_vector(15 downto 0);
signal debug_start, debug_len : integer;
signal wr_valid : std_logic;
signal wr_data : std_logic_vector(7 downto 0);
signal wr_done : std_logic;
signal wr_got_byte : std_logic;
signal rd_stop : std_logic;
signal rd_valid : std_logic;
signal rd_data : std_logic_vector(7 downto 0);
signal i, k, j, l : integer;
signal buf : std_logic_vector(15 downto 0);
signal status_error : std_logic;

signal clk_en : std_logic;

begin

wr_got_byte <= have_byte_i;
wr_done <= wr_done_i;
wr_data_o <= wr_data;
rd_valid <= rd_valid_i;
rd_stop_o <= rd_stop;
rd_data <= rd_data_i;

ControlProcess:process(clk_i, rst_i) 
variable debug_tmp : std_logic_vector(3 downto 0);
begin
    if (rst_i = '1') then 
        status_debug_o <= "00";
        status_error_o <= '0';
        status_stage_o <= "0000";
        control_state <= init0;
        wr_data <= (others => '0');
        wr_valid <= '0';
        debug_var <= (others => '1');
        debug_start <= 0;
        debug_len <= 0;
        rd_stop <= '1';
        k <= 0;
        l <= 0;
        j <= 0;
        buf <= (others => '0');
    elsif rising_edge(clk_i) then 
        case control_state is
            when init0 =>
                wr_valid <= '1';
                wr_data <= WCRU;
                control_state <= init0a;
            when init0a =>
                if (wr_got_byte = '1') then 
                     wr_data <= EUDASTL;
                     control_state <= init1;
                end if;
            when init1 => 
                if (wr_got_byte = '1') then
                    wr_data <= x"12"; 
                    control_state <= init2;
                end if;
            when init2 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"34"; 
                    control_state <= init3;
                end if;
            when init3 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= init3a;
                end if;
            when init3a => 
                if (wr_done = '1') then
                    control_state <= init4;
                end if;
            when init4 =>
                wr_valid <= '1';
                wr_data <= RCRU;
                control_state <= init4b;     
            when init4b =>
                if (wr_got_byte = '1') then
                    wr_data <= EUDASTL;
                    control_state <= init4a;
                end if;
            when init4a =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= init5;
                end if;
            when init5 =>
                rd_stop <= '0';
                if (rd_valid = '1') then
                    buf(7 downto 0) <= rd_data;
                    control_state <= init6;
                end if;     
            when init6 =>
                if rd_valid = '1' then                 
                    buf(15 downto 8) <= rd_data;
                    control_state <= init7;
                    rd_stop <= '1';
                end if;
            when init7 =>
                if (buf /= x"3412") then
                    status_error <= '1';
                    debug_var <= buf;
                    debug_len <= 16;
                    debug_start <= 0;
                    k <= 0;
                    control_state <= debug0;
                else 
                    control_state <= init8;
                end if;
            when init8 =>
                wr_valid <= '1';
                wr_data <= RCRU;
                control_state <= init8b;
            when init8b => 
                if (wr_got_byte = '1') then
                    wr_data <= ESTATH;
                    control_state <= init8a;
                end if;
            when init8a =>
                    if (wr_got_byte = '1') then
                        wr_valid <= '0';
                        control_state <= init9;
                        rd_stop <= '0';
                    end if;
            when init9 =>
                if (rd_valid = '1') then
                    buf(7 downto 0) <= rd_data;
                    control_state <= init10;
                    rd_stop <= '1';
                end if;
            when init10 =>
                if rd_data(4) = '1' then
                    status_error <= '0';
                    control_state <= init11;
                else
                    status_error <= '1';
                    control_state <= init8;                
                end if;
            when init11 =>
                wr_valid <= '1';
                wr_data <= BFSU;
                control_state <= init12;
            when init12 =>
                if (wr_got_byte = '1') then
                    wr_data <= ECON2L;
                    control_state <= init13;
                end if;
            when init13 =>
                if (wr_got_byte = '1') then
                    wr_data <= ETHRST;
                    control_state <= init14;
                end if;
            when init14 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= init14a;
                end if;
            when init14a =>
                if (wr_done = '1') then
                    control_state <= init15;
                    j <= 250;
                end if;
            when init15 =>
                j <= j - 1;
                if (j = 0) then
                    control_state <= init16;
                end if;
            when init16 =>
                wr_valid <= '1';
                wr_data <= RCRU;
                control_state <= init16b;
            when init16b =>
                if (wr_got_byte = '1') then
                    wr_data <= EUDASTL;
                    control_state <= init16a;
                end if;
            when init16a =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= init17;
                end if;
            when init17 =>
                rd_stop <= '0';
                if (rd_valid = '1') then
                    buf(7 downto 0) <= rd_data;
                    control_state <= init18;
                end if;
            when init18 =>
                if (rd_valid = '1') then
                    buf(15 downto 8) <= rd_data;
                    control_state <= init19;
                    rd_stop <= '1';
                end if;
            when init19 =>
                if (buf = x"0000") then
                    status_error <= '0';
                    j <= 2560;
                    control_state <= init20;
                else
                    status_error <= '1';
                    debug_var <= buf;
                    debug_len <= 16;
                    debug_start <= 0;
                    k <= 0;
                    control_state <= debug0;
                end if;   
            when init20 =>
                j <= j - 1;
                if (j = 0) then
                    control_state <= init21;
                end if; 
            when init21 =>
                wr_valid <= '1';
                wr_data <= RCRU;
                control_state <= init22;
            when init22 =>
                if (wr_got_byte = '1') then
                    wr_data <= MACON2L;
                    control_state <= init23;
                end if;
            when init23 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    rd_stop <= '0';
                    control_state <= init24;
                end if;
            when init24 =>
                if (rd_valid = '1') then
                    buf(7 downto 0) <= rd_data;
                    rd_stop <= '1';
                    control_state <= init25;
                end if;
            when init25 =>
                if (buf(7 downto 0) = MACON2L_d) then
                    control_state <= init26;
                else
                    status_error <= '1';
                    debug_var(7 downto 0) <= buf(7 downto 0);
                    debug_len <= 8;
                    debug_start <= 0;
                    k <= 0;
                    control_state <= debug0;
                end if;
            when init26 =>
                    wr_valid <= '1';
                    wr_data <= WCRU;
                    control_state <= init27;
            when init27 =>
                if (wr_got_byte = '1') then
                    wr_data <= MAMXFLL;
                    control_state <= init28;
                end if;
            when init28 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"dc";
                    control_state <= init29;
                end if;
            when init29 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"05";
                    control_state <= init30;
                end if;
            when init30 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= init31;
                end if;
            when init31 =>
                if (wr_done = '1') then
                    control_state <= build0;
                end if; 
                
            when build0 =>
                wr_valid <= '1';
                wr_data <= WCRU;
                control_state <= build1;
            when build1 =>
                if (wr_got_byte = '1') then
                    wr_data <= ETXSTL;
                    control_state <= build2;
                end if;        
            when build2 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"00"; -- ETXSTL = 0
                    control_state <= build3;
                end if;    
            when build3 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"00"; -- ETXSTH = 0
                    control_state <= build4;
                end if;     
            when build4 =>
                if (wr_got_byte = '1') then
                    wr_data <= std_logic_vector(to_unsigned(FRAME_SIZE, 8)); -- ETXLENL
                    control_state <= build5;
                end if;
            when build5 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"00"; -- ETXLENH = 0
                    control_state <= build6;
                end if;
            when build6 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= build6a;
                end if;
            when build6a =>
                if (wr_done = '1') then
                    control_state <= build7;
                end if;
            when build7 =>
                wr_valid <= '1';
                wr_data <= WCRU;
                control_state <= build7a;            
            when build7a => 
                if (wr_got_byte = '1') then
                    wr_data <= EUDASTL;
                    control_state <= build8;
                end if;
            when build8 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"00"; -- EUDASTL = 00
                    control_state <= build9;
                end if;    
            when build9 =>
                if (wr_got_byte = '1') then
                    wr_data <= x"00"; -- EUDASTH = 00
                    control_state <= build10;
                end if;
            when build10 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= build10a;
                end if;    
            when build10a =>
                if (wr_done = '1') then
                    control_state <= build11;
                end if;    
            when build11 =>
                wr_valid <= '1';
                wr_data <= WUDADATA;
                control_state <= build12;
                j <= FRAME_SIZE-1;
            when build12 => 
                if (wr_got_byte = '1') then
                    wr_data <= ExampleFrame(j);
                    if (j = 0) then
                        control_state <= build13;
                    end if;
                        j <= j - 1;
                end if;
            when build13 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= build14;
                end if;    
            when build14 =>
                if (wr_done = '1') then
                    control_state <= build23;
                end if;      
            when build19 => -- Set the automatic insert mac flag
                wr_valid <= '1';
                wr_data <= BFSU;
                control_state <= build20;  
            when build20 =>
                if (wr_got_byte = '1') then
                    wr_data <= ECON2H;
                    control_state <= build21;
                end if;     
            when build21 =>
                if (wr_got_byte = '1') then
                    wr_data <= TXMAC;
                    control_state <= build21a;
                end if;   
            when build21a =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= build22;
                end if; 
            when build22 =>
                if (wr_done = '1') then
                    control_state <= build23;
                end if;     
            when build23 => -- Start the transaction
                wr_valid <= '1';
                wr_data <= SETTXRTS;
                control_state <= build24;
            when build24 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= build25;
                end if;
            when build25 =>
                if (wr_done = '1') then
                    control_state <= verify0;
                end if;
            when verify0 =>
                wr_valid <= '1';
                wr_data <= RCRU;
                control_state <= verify0a;
            when verify0a =>
                if (wr_got_byte = '1') then
                    wr_data <= ECON1L;
                    control_state <= verify1;
                end if;
            when verify1 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    rd_stop <= '0';
                    control_state <= verify2;
                end if;    
            when verify2 =>
                if (rd_valid = '1') then
                    buf(7 downto 0) <= rd_data;
                    control_state <= verify3;
                    rd_stop <= '1';
                end if;
            when verify3 =>
                if (buf(1) = '1') then
                    status_error <= '1';
                    control_state <= verify0;
                else
                    control_state <= verify4;
                end if;
            when verify4 =>
                wr_valid <= '1';
                wr_data <= RCRU;
                control_state <= verify5;
            when verify5 =>
                if wr_got_byte = '1' then
                    wr_data <= ETXWIREL;
                    control_state <= verify6;
                end if;     
            when verify6 =>
                if (wr_got_byte = '1') then
                    wr_valid <= '0';
                    control_state <= verify7;
                end if;    
            when verify7 =>
                rd_stop <= '0';
                if (rd_valid = '1') then
                    buf(7 downto 0) <= rd_data;
                    control_state <= verify8;
                end if;    
            when verify8 =>
                if rd_valid = '1' then
                    buf(15 downto 8) <= rd_data;
                    control_state <= verify9;
                end if;    
            when verify9 =>
                rd_stop <= '1';
                status_error <= '0';
                debug_var <= buf;
                debug_len <= 16;
                debug_start <= 0;
                control_state <= debug0;   
            when term => 
                if buf = x"abcd" then
                    control_state <= init0;
                else
                    status_error <= '0';
                    debug_var <= x"ffff";
                    debug_len <= 16;
                    debug_start <= 0;
                    control_state <= debug0;
                end if;
            when debug0 =>
                status_stage_o(3 downto 0) <= debug_var((k+3) downto k);
                debug_tmp := std_logic_vector(to_unsigned(k, 4));
                status_debug_o <= debug_tmp(3 downto 2);
                k <= k + 4;
                l <= 10000000;
                control_state <= debug1;
            when others =>
                if (l = 0) then
                    if (k = debug_len) then
                        control_state <= build0;
                    else
                        control_state <= debug0;
                    end if;
                else
                    l <= l - 1;
                end if;             
        end case;
    end if;
end process;


end Behavioral;

