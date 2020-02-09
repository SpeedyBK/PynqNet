----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.02.2020 09:50:48
-- Design Name: 
-- Module Name: ManInput - Behavioral
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

entity ManInput is
    Port ( clk_i : in STD_LOGIC;
           nreset_i : in STD_LOGIC;
           switches_i : in STD_LOGIC_VECTOR (7 downto 0);
           bleds_o : out STD_LOGIC_VECTOR (7 downto 0);
           codeword_o :out STD_LOGIC_VECTOR(7 downto 0);
           push_to_send_i : in STD_LOGIC);
end ManInput;

architecture Behavioral of ManInput is

signal ButReg : std_logic_vector (31 downto 0);
signal ButDeb : std_logic;
signal one : std_logic_vector (31 downto 0) := (others => '1');
signal zero : std_logic_vector (31 downto 0) := (others => '0');
signal codeword : STD_LOGIC_VECTOR (7 downto 0);

begin

----------------------
-- Switches to LEDs --
----------------------
bleds_o <= switches_i;

----------------------------------------------------------------
--Push to Send Debouncer -- -- Implemented via Shift-Register --
----------------------------------------------------------------
shiftreg:process(clk_i, nreset_i)
variable delay : integer range 0 to 32767;
begin
    if rising_edge(clk_i) then 
        if (nreset_i = '0') then 
            delay := 0;
            ButReg <= (others => '0');
        else 
            if (delay < 32767) then
                delay := delay + 1;
                ButReg <= ButReg;
            else 
                delay := 0;
                ButReg <= ButReg(30 downto 0) & not push_to_send_i;
                if (ButReg = one) then 
                    ButDeb <= '1';
                elsif (ButReg = zero) then 
                    ButDeb <= '0';
                else 
                    ButDeb <= ButDeb;
                end if;
            end if;
        end if;
    end if;
end process;

with ButDeb select
codeword <= switches_i when '1',
            codeword when '0';

codeword_o <= codeword;            

end Behavioral;
