----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2019 17:24:23
-- Design Name: 
-- Module Name: crc_TB - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity crc_TB is
--  Port ( );
end crc_TB;

architecture Behavioral of crc_TB is

signal clk : std_logic := '0';
signal reset: std_logic := '1';

signal load_init : std_logic := '0';
signal calc : std_logic := '0';
signal val : std_logic := '0';
signal data : std_logic_vector(7 downto 0);

signal crcreg : std_logic_vector(31 downto 0);
signal crc : std_logic_vector(7 downto 0);
signal valid : std_logic;

constant data_byte_0 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_1 : std_logic_vector (7 downto 0) := x"10";
constant data_byte_2 : std_logic_vector (7 downto 0) := x"A4";
constant data_byte_3 : std_logic_vector (7 downto 0) := x"7B";
constant data_byte_4 : std_logic_vector (7 downto 0) := x"EA";
constant data_byte_5 : std_logic_vector (7 downto 0) := x"80";
constant data_byte_6 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_7 : std_logic_vector (7 downto 0) := x"12";
constant data_byte_8 : std_logic_vector (7 downto 0) := x"34";
constant data_byte_9 : std_logic_vector (7 downto 0) := x"56";
constant data_byte_10 : std_logic_vector (7 downto 0) := x"78";
constant data_byte_11 : std_logic_vector (7 downto 0) := x"90";
constant data_byte_12 : std_logic_vector (7 downto 0) := x"08";
constant data_byte_13 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_14 : std_logic_vector (7 downto 0) := x"45";
constant data_byte_15 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_16 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_17 : std_logic_vector (7 downto 0) := x"2E";
constant data_byte_18 : std_logic_vector (7 downto 0) := x"B3";
constant data_byte_19 : std_logic_vector (7 downto 0) := x"FE";
constant data_byte_20 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_21 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_22 : std_logic_vector (7 downto 0) := x"80";
constant data_byte_23 : std_logic_vector (7 downto 0) := x"11";
constant data_byte_24 : std_logic_vector (7 downto 0) := x"05";
constant data_byte_25 : std_logic_vector (7 downto 0) := x"40";
constant data_byte_26 : std_logic_vector (7 downto 0) := x"C0";
constant data_byte_27 : std_logic_vector (7 downto 0) := x"A8";
constant data_byte_28 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_29 : std_logic_vector (7 downto 0) := x"2C";
constant data_byte_30 : std_logic_vector (7 downto 0) := x"C0";
constant data_byte_31 : std_logic_vector (7 downto 0) := x"A8";
constant data_byte_32 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_33 : std_logic_vector (7 downto 0) := x"04";
constant data_byte_34 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_35 : std_logic_vector (7 downto 0) := x"04";
constant data_byte_36 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_37 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_38 : std_logic_vector (7 downto 0) := x"1A";
constant data_byte_39 : std_logic_vector (7 downto 0) := x"2D";
constant data_byte_40 : std_logic_vector (7 downto 0) := x"E8";
constant data_byte_41 : std_logic_vector (7 downto 0) := x"00";
constant data_byte_42 : std_logic_vector (7 downto 0) := x"01";
constant data_byte_43 : std_logic_vector (7 downto 0) := x"02";
constant data_byte_44 : std_logic_vector (7 downto 0) := x"03";
constant data_byte_45 : std_logic_vector (7 downto 0) := x"04";
constant data_byte_46 : std_logic_vector (7 downto 0) := x"05";
constant data_byte_47 : std_logic_vector (7 downto 0) := x"06";
constant data_byte_48 : std_logic_vector (7 downto 0) := x"07";
constant data_byte_49 : std_logic_vector (7 downto 0) := x"08";
constant data_byte_50 : std_logic_vector (7 downto 0) := x"09";
constant data_byte_51 : std_logic_vector (7 downto 0) := x"0A";
constant data_byte_52 : std_logic_vector (7 downto 0) := x"0B";
constant data_byte_53 : std_logic_vector (7 downto 0) := x"0C";
constant data_byte_54 : std_logic_vector (7 downto 0) := x"0D";
constant data_byte_55 : std_logic_vector (7 downto 0) := x"0E";
constant data_byte_56 : std_logic_vector (7 downto 0) := x"0F";
constant data_byte_57 : std_logic_vector (7 downto 0) := x"10";
constant data_byte_58 : std_logic_vector (7 downto 0) := x"11";
constant data_byte_59 : std_logic_vector (7 downto 0) := x"B3";
constant data_byte_60 : std_logic_vector (7 downto 0) := x"31";
constant data_byte_61 : std_logic_vector (7 downto 0) := x"88";
constant data_byte_62 : std_logic_vector (7 downto 0) := x"1B";

component crc_generator is
    Port ( clk_i : in STD_LOGIC;
           nreset_i : in STD_LOGIC;
           init_i : in STD_LOGIC;
           valid_i : in STD_LOGIC;
           calc_i : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (7 downto 0);
           crc_valid_o : OUT STD_LOGIC;
           crc_o : out STD_LOGIC_VECTOR(7 downto 0);
           crcreg_o : out STD_LOGIC_VECTOR (31 downto 0));
end component;

begin

clockgen: process
begin
    wait for 5ns;
    clk <= not clk;
end process;

signalgen: process
variable count : integer range 0 to 1500 := 0;
begin 
    wait for 5ns;
    count := count + 1;
        if (count < 10) then 
            reset <= '0';
        elsif (count mod 10 < 2) then 
            val <= '1';
            if (count = 50*2) then
                data <= data_byte_0;
                calc <= '1';
            elsif (count = 55*4) then 
                data <= data_byte_1;
            elsif (count = 60*4) then 
                data <= data_byte_2;
            elsif (count = 65*4) then 
                data <= data_byte_3;
            elsif (count = 70*4) then 
                data <= data_byte_4;
            elsif (count = 75*4) then 
                data <= data_byte_5;  
            elsif (count = 80*4) then 
                data <= data_byte_6;
            elsif (count = 85*4) then 
                data <= data_byte_7;
            elsif (count = 90*4) then 
                data <= data_byte_8;
            elsif (count = 95*4) then 
                data <= data_byte_9;
            elsif (count = 100*4) then 
                data <= data_byte_10;
            elsif (count = 105*4) then 
                data <= data_byte_11;
            elsif (count = 110*4) then 
                data <= data_byte_12;
            elsif (count = 115*4) then 
                data <= data_byte_13;
            elsif (count = 120*4) then 
                data <= data_byte_14;
            elsif (count = 125*4) then 
                data <= data_byte_15;
            elsif (count = 130*4) then 
                data <= data_byte_16;
            elsif (count = 135*4) then 
                data <= data_byte_17;
            elsif (count = 140*4) then 
                data <= data_byte_18;
            elsif (count = 145*4) then 
                data <= data_byte_19;
            elsif (count = 150*4) then 
                data <= data_byte_20;
            elsif (count = 155*4) then 
                data <= data_byte_21;
            elsif (count = 160*4) then 
                data <= data_byte_22;
            elsif (count = 165*4) then
                data <= data_byte_23;
            elsif (count = 170*4) then 
                data <= data_byte_24;
            elsif (count = 175*4) then 
                data <= data_byte_25;
            elsif (count = 180*4) then 
                data <= data_byte_26;
            elsif (count = 185*4) then 
                data <= data_byte_27;
            elsif (count = 190*4) then 
                data <= data_byte_28;
            elsif (count = 195*4) then 
                data <= data_byte_29;
            elsif (count = 200*4) then 
                data <= data_byte_30;
            elsif (count = 205*4) then 
                data <= data_byte_31;
            elsif (count = 210*4) then 
                data <= data_byte_32;
            elsif (count = 215*4) then 
                data <= data_byte_33;
            elsif (count = 220*4) then 
                data <= data_byte_34;
            elsif (count = 225*4) then 
                data <= data_byte_35;
            elsif (count = 230*4) then 
                data <= data_byte_36;
            elsif (count = 235*4) then 
                data <= data_byte_37;
            elsif (count = 240*4) then 
                data <= data_byte_38;
            elsif (count = 245*4) then 
                data <= data_byte_39;
            elsif (count = 250*4) then 
                data <= data_byte_40;
            elsif (count = 255*4) then 
                data <= data_byte_41;
            elsif (count = 260*4) then 
                data <= data_byte_42;
            elsif (count = 265*4) then 
                data <= data_byte_43;
            elsif (count = 270*4) then 
                data <= data_byte_44;
            elsif (count = 275*4) then 
                data <= data_byte_45;
            elsif (count = 280*4) then 
                data <= data_byte_46;
            elsif (count = 285*4) then 
                data <= data_byte_47;
            elsif (count = 290*4) then 
                data <= data_byte_48;
            elsif (count = 295*4) then 
                data <= data_byte_49;
            elsif (count = 300*4) then 
                data <= data_byte_50;
            elsif (count = 305*4) then 
                data <= data_byte_51;
            elsif (count = 310*4) then 
                data <= data_byte_52;
            elsif (count = 315*4) then 
                data <= data_byte_53;
            elsif (count = 320*4) then 
                data <= data_byte_54;
            elsif (count = 325*4) then 
                data <= data_byte_55;
            elsif (count = 330*4) then 
                data <= data_byte_56;
            elsif (count = 335*4) then 
                data <= data_byte_57;
            elsif (count = 340*4) then 
                data <= data_byte_58;
            elsif (count = 345*4) then 
                data <= data_byte_59;
            elsif (count = 350*4) then 
                data <= data_byte_60;
            elsif (count = 355*4) then 
                data <= data_byte_61;
            elsif (count = 360*4) then 
                data <= data_byte_62;             
            end if; 
        else
            reset <= '1';
            val <= '0';
        end if;
end process;

DUT: crc_generator
    port map (clk_i => clk,
              nreset_i => reset,
              init_i => load_init,
              valid_i => val,
              calc_i => calc,
              data_i => data,
              crc_valid_o => valid,
              crc_o => crc,
              crcreg_o => crcreg);

end Behavioral;
