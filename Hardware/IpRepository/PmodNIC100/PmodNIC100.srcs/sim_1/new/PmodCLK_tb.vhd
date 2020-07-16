----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 10:18:58
-- Design Name: 
-- Module Name: PmodCLK_tb - Behavioral
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

entity PmodCLK_tb is
--  Port ( );
end PmodCLK_tb;

architecture Behavioral of PmodCLK_tb is

component PmodCLK is
    Port ( rst_i : in STD_LOGIC;
           clk_i : in STD_LOGIC;
           ss_i : in STD_LOGIC;
           PmodSCLK : out STD_LOGIC);
end component; 

signal rst, ss, PCLK : std_logic;
signal clk : std_logic := '0';

begin
    
-- Reset:
rst <= '0', '1' after 100 ns;

-- Clock:
process
begin 
    wait for 10ns;
    clk <= not clk;
end process;

-- ss:
ss <= '1', '0' after 200 ns, '1' after 500 ns; 

DUT: PmodCLK
port map ( rst_i => rst,
           clk_i => clk,
           ss_i => ss,
           PmodSCLK => PCLK);

end Behavioral;
