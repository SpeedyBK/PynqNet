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
           dataSeven_i : in STD_LOGIC_VECTOR (31 downto 0);
           dataEight_i : in STD_LOGIC_VECTOR (31 downto 0);           
           digit_o : out STD_LOGIC_VECTOR (7 downto 0);
           value_o : out STD_LOGIC_VECTOR (7 downto 0));
end DisplayController;

architecture Behavioral of DisplayController is

----------------------------
-- ASCII to 7-Segment ROM --
----------------------------
type ASCIIROM is array (0 to 9) of std_logic_vector (7 downto 0);
signal RomContent : ASCIIROM := ( "11111100", "01100000", "11011010", "11110010",
                                  "01100110", "10110110", "10111110", "11100000",
                                  "11111110", "11110110");

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
            if (digitCount < 7) then 
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
    digit_o <= not "00000001" when 0,
               not "00000010" when 1,
               not "00000100" when 2,
               not "00001000" when 3,
               not "00010000" when 4,
               not "00100000" when 5,
               not "01000000" when 6,
               not "10000000" when 7,
               not "00000000" when others;
               
----------------------
-- Data Multiplexer --
----------------------
with digitCount select
    data <= to_integer(unsigned(dataOne_i)) when 7,
            to_integer(unsigned(dataTwo_i)) when 6,
            to_integer(unsigned(dataThree_i)) when 5,
            to_integer(unsigned(dataFour_i)) when 4,
            to_integer(unsigned(dataFive_i)) when 3,
            to_integer(unsigned(dataSix_i)) when 2,
            to_integer(unsigned(dataSeven_i)) when 1,
            to_integer(unsigned(dataEight_i)) when 0,
            0 when others;
               
-------------------------------------
-- Ascii to Seven Segement Decoder --
-------------------------------------
value_o <= not RomContent(data - 48);                        

end Behavioral;
