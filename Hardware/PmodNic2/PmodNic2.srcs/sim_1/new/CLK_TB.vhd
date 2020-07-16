----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.07.2020 12:38:11
-- Design Name: 
-- Module Name: CLK_TB - Behavioral
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

entity CLK_TB is
--  Port ( );
end CLK_TB;

architecture Behavioral of CLK_TB is

signal clk, rst : std_logic := '0';
signal clk_ena, clk_serial : std_logic;

begin

process
begin 
    wait for 10 ns; 
    clk <= not clk;
end process;

rst <= '0', '1' after 100ns; 

DUT:entity work.S_Clock
generic map (SYSTEMCLK => 125000000, TARGETCLK => 8000000)
port map (clk_i => clk,
          rst_i => rst,
          clk_ena_o => clk_ena,
          clk_serial_o => clk_serial);

end Behavioral;
