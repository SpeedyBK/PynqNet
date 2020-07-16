----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.07.2020 12:28:55
-- Design Name: 
-- Module Name: S_Clock - Behavioral
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

entity S_Clock is
    generic(SYSTEMCLK : integer := 125000000;
            TARGETCLK : integer := 8000000);
    Port ( clk_i : in std_logic;
           rst_i : in std_logic;
           clk_ena_o : out std_logic;
           clk_serial_o : out std_logic );
end S_Clock;

architecture Behavioral of S_Clock is

signal rst : std_logic; 

begin

-- If the System outside this component uses a low active reset.
-- rst <= not rst_i;
rst <= rst_i;

SClock:process(clk_i, rst_i)
variable i : integer range 0 to SYSTEMCLK;
begin
    if (rst <= '0') then 
        i := 0;
        clk_ena_o <= '0';
        clk_serial_o <= '0';
    elsif rising_edge(clk_i) then 
        if (i < SYSTEMCLK-TARGETCLK) then 
            i := i + TARGETCLK;
            clk_ena_o <= '0';
            if (i < (SYSTEMCLK / 2)) then 
                clk_serial_o <= '1';
            else 
                clk_serial_o <= '0';
            end if;
        else 
            i := 0;
            clk_ena_o <= '1';
            clk_serial_o <= '1';
        end if;
    end if;
end process;

end Behavioral;
