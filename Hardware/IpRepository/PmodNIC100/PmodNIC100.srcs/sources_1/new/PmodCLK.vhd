----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 09:45:58
-- Design Name: 
-- Module Name: PmodCLK - Behavioral
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

entity PmodCLK is
    Port ( rst_i : in STD_LOGIC;
           clk_i : in STD_LOGIC;
           cs_i : in STD_LOGIC;
           PmodSCLK : out STD_LOGIC);
end PmodCLK;

architecture Behavioral of PmodCLK is

signal enable : std_logic;

begin

process (clk_i, rst_i)
begin
    if (rst_i = '0') then 
        enable <= '0';
    elsif rising_edge(clk_i) then 
        if (cs_i = '0') then 
            enable <= '1';
        else 
            enable <= '0';
        end if;
    end if;
end process;

PmodSCLK <= not clk_i and enable;

end Behavioral;
