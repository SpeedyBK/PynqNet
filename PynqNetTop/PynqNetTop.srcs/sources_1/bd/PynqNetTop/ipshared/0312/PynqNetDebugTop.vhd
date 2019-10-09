----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2019 22:50:18
-- Design Name: 
-- Module Name: PynqNetDebugTop - Behavioral
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

entity PynqNetDebugTop is
    Port ( clk_i : in STD_LOGIC;
           reset_i : in STD_LOGIC;
           out_o : out STD_LOGIC);
end PynqNetDebugTop;

architecture Behavioral of PynqNetDebugTop is

begin

process (reset_i, clk_i)
variable count : integer range 0 to 511 := 0;
begin
    if (reset_i = '0') then
        count := 0;
        out_o <= '0';
    elsif (rising_edge(clk_i)) then 
        if (count < 100) then 
            count := count + 1;
            out_o <= '1';
        elsif (count < 511) then 
            count := count + 1;
            out_o <= '0';
        else 
            count := 0;
        end if;
    end if;
end process;
        


end Behavioral;
