----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.02.2020 10:30:05
-- Design Name: 
-- Module Name: DisplayController - Behavioral
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

entity DisplayController is
    Port ( clk_i : in STD_LOGIC;
           nreset_i : in STD_LOGIC;
           dataOne_i : in STD_LOGIC_VECTOR (31 downto 0);
           dataTwo_i : in STD_LOGIC_VECTOR (31 downto 0);
           dataThree_i : in STD_LOGIC_VECTOR (31 downto 0);
           dataFour_i : in STD_LOGIC_VECTOR (31 downto 0);
           dataFive_i : in STD_LOGIC_VECTOR (31 downto 0);
           dataSix_i : in STD_LOGIC_VECTOR (31 downto 0);
           digit_o : out STD_LOGIC_VECTOR (5 downto 0);
           value_o : out STD_LOGIC_VECTOR (7 downto 0));
end DisplayController;

architecture Behavioral of DisplayController is

----------------------------
-- ASCII to 7-Segment ROM --
----------------------------
type ASCIIROM is array (0 to 95) of std_logic_vector (7 downto 0);
signal RomContent : ASCIIROM := ( "00000000", "10000110", "00100010", "01111110",
	                              "01101101", "11010010", "01000110", "00100000",
	                              "00101001", "00001011", "00100001", "01110000",
	                              "00010000", "01000000", "10000000", "01010010",
	                              "00111111", "00000110", "01011011", "01001111",
	                              "01100110", "01101101", "01111101", "00000111",
	                              "01111111", "01101111", "00001001", "00001101",
	                              "01100001", "01001000", "01000011", "11010011",
	                              "01011111", "01110111", "01111100", "00111001",
	                              "01011110", "01111001", "01110001", "00111101",
	                              "01110110", "00110000", "00011110", "01110101",
	                              "00111000", "00010101", "00110111", "00111111",
	                              "01110011", "01101011", "00110011", "01101101",
	                              "01111000", "00111110", "00111110", "00101010",
	                              "01110110", "01101110", "01011011", "00111001",
	                              "01100100", "00001111", "00100011", "00001000",
	                              "00000010", "01011111", "01111100", "01011000",
	                              "01011110", "01111011", "01110001", "01101111",
	                              "01110100", "00010000", "00001100", "01110101",
	                              "00110000", "00010100", "01010100", "01011100",
	                              "01110011", "01100111", "01010000", "01101101",
	                              "01111000", "00011100", "00011100", "00010100",
	                              "01110110", "01101110", "01011011", "01000110",
	                              "00110000", "01110000", "00000001", "00000000");

-------------
-- Signals --
-------------
signal enable : std_logic;
signal digitCount : integer range 0 to 8; 
signal data : integer;

begin

------------------------------
-- Enable signal generation --
------------------------------
ClockDiv:process(clk_i, nreset_i)
variable counter : integer range 0 to 16383;
begin 
    if rising_edge(clk_i) then 
        if (nreset_i = '0') then 
            counter := 0;
            enable <= '0';
        elsif (counter < 12500) then 
            counter := counter + 1;
            enable <= '0';
        else 
            counter := 0;
            enable <= '1';
        end if;
    end if;
end process;

-------------------
-- Digit Counter --
-------------------
DigitCounter:process(clk_i, nreset_i, enable)
begin 
    if rising_edge(clk_i) then 
        if (nreset_i = '0') then 
            digitCount <= 0;
        elsif (enable = '1') then
            if (digitCount < 5) then 
                digitCount <= digitCount + 1;
            else 
                digitCount <= 0;
            end if;
        else 
            digitCount <= digitCount;
        end if;
    end if;
end process;

-----------------------
-- Digit Multiplexer --
-----------------------          
with digitCount select
    digit_o <= not "000001" when 0,
               not "000010" when 1,
               not "000100" when 2,
               not "001000" when 3,
               not "010000" when 4,
               not "100000" when 5,
               not "000000" when others;
               
----------------------
-- Data Multiplexer --
----------------------
with digitCount select
    data <= to_integer(unsigned(dataOne_i)) when 5,
            to_integer(unsigned(dataTwo_i)) when 4,
            to_integer(unsigned(dataThree_i)) when 3,
            to_integer(unsigned(dataFour_i)) when 2,
            to_integer(unsigned(dataFive_i)) when 1,
            to_integer(unsigned(dataSix_i)) when 0,
            0 when others;
               
-------------------------------------
-- Ascii to Seven Segement Decoder --
-------------------------------------
value_o <= not RomContent(data);                        

end Behavioral;
