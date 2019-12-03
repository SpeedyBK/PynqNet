----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2019 14:10:14
-- Design Name: 
-- Module Name: crc_generator - Behavioral
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

entity crc_generator is
    Port ( clk_i : in STD_LOGIC;
           nreset_i : in STD_LOGIC;
           init_i : in STD_LOGIC;
           valid_i : in STD_LOGIC;
           calc_i : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (7 downto 0);
           crc_valid_o : OUT STD_LOGIC;
           crc_o : out STD_LOGIC_VECTOR(7 downto 0);
           crcreg_o : out STD_LOGIC_VECTOR (31 downto 0));
end crc_generator;

architecture Behavioral of crc_generator is

--
constant c_crc_remainder  : std_logic_vector(31 downto 0) := x"C704DD7B";

-- Data-Flow-Signal
signal t_crc : STD_LOGIC_VECTOR (7 downto 0);
signal t_crcreg : STD_LOGIC_VECTOR (31 downto 0);
signal t_crc_valid : STD_LOGIC;
signal nextcrc : STD_LOGIC_VECTOR (31 downto 0);
signal reversed_in : STD_LOGIC_VECTOR (7 downto 0);

-- Functions
function reverse(inslv : std_logic_vector) return std_logic_vector is
    variable rev: std_logic_vector(inslv'RANGE);
    begin
    for i in inslv'RANGE loop
        rev(i) := inslv(i);
    end loop;
    return rev;
end reverse;

  -- easics:
  -- polynomial: x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x^1 + 1
  -- data width: 8
  -- convention: the first serial bit is D[7]
  function nextCRC32_D8
    (Data: std_logic_vector(7 downto 0);
     crc:  std_logic_vector(31 downto 0))
    return std_logic_vector is

    variable d:      std_logic_vector(7 downto 0);
    variable c:      std_logic_vector(31 downto 0);
    variable newcrc: std_logic_vector(31 downto 0);

  begin
    d := Data;
    c := crc;

    newcrc(0) := d(6) xor d(0) xor c(24) xor c(30);
    newcrc(1) := d(7) xor d(6) xor d(1) xor d(0) xor c(24) xor c(25) xor c(30) xor c(31);
    newcrc(2) := d(7) xor d(6) xor d(2) xor d(1) xor d(0) xor c(24) xor c(25) xor c(26) xor c(30) xor c(31);
    newcrc(3) := d(7) xor d(3) xor d(2) xor d(1) xor c(25) xor c(26) xor c(27) xor c(31);
    newcrc(4) := d(6) xor d(4) xor d(3) xor d(2) xor d(0) xor c(24) xor c(26) xor c(27) xor c(28) xor c(30);
    newcrc(5) := d(7) xor d(6) xor d(5) xor d(4) xor d(3) xor d(1) xor d(0) xor c(24) xor c(25) xor c(27) xor c(28) xor c(29) xor c(30) xor c(31);
    newcrc(6) := d(7) xor d(6) xor d(5) xor d(4) xor d(2) xor d(1) xor c(25) xor c(26) xor c(28) xor c(29) xor c(30) xor c(31);
    newcrc(7) := d(7) xor d(5) xor d(3) xor d(2) xor d(0) xor c(24) xor c(26) xor c(27) xor c(29) xor c(31);
    newcrc(8) := d(4) xor d(3) xor d(1) xor d(0) xor c(0) xor c(24) xor c(25) xor c(27) xor c(28);
    newcrc(9) := d(5) xor d(4) xor d(2) xor d(1) xor c(1) xor c(25) xor c(26) xor c(28) xor c(29);
    newcrc(10) := d(5) xor d(3) xor d(2) xor d(0) xor c(2) xor c(24) xor c(26) xor c(27) xor c(29);
    newcrc(11) := d(4) xor d(3) xor d(1) xor d(0) xor c(3) xor c(24) xor c(25) xor c(27) xor c(28);
    newcrc(12) := d(6) xor d(5) xor d(4) xor d(2) xor d(1) xor d(0) xor c(4) xor c(24) xor c(25) xor c(26) xor c(28) xor c(29) xor c(30);
    newcrc(13) := d(7) xor d(6) xor d(5) xor d(3) xor d(2) xor d(1) xor c(5) xor c(25) xor c(26) xor c(27) xor c(29) xor c(30) xor c(31);
    newcrc(14) := d(7) xor d(6) xor d(4) xor d(3) xor d(2) xor c(6) xor c(26) xor c(27) xor c(28) xor c(30) xor c(31);
    newcrc(15) := d(7) xor d(5) xor d(4) xor d(3) xor c(7) xor c(27) xor c(28) xor c(29) xor c(31);
    newcrc(16) := d(5) xor d(4) xor d(0) xor c(8) xor c(24) xor c(28) xor c(29);
    newcrc(17) := d(6) xor d(5) xor d(1) xor c(9) xor c(25) xor c(29) xor c(30);
    newcrc(18) := d(7) xor d(6) xor d(2) xor c(10) xor c(26) xor c(30) xor c(31);
    newcrc(19) := d(7) xor d(3) xor c(11) xor c(27) xor c(31);
    newcrc(20) := d(4) xor c(12) xor c(28);
    newcrc(21) := d(5) xor c(13) xor c(29);
    newcrc(22) := d(0) xor c(14) xor c(24);
    newcrc(23) := d(6) xor d(1) xor d(0) xor c(15) xor c(24) xor c(25) xor c(30);
    newcrc(24) := d(7) xor d(2) xor d(1) xor c(16) xor c(25) xor c(26) xor c(31);
    newcrc(25) := d(3) xor d(2) xor c(17) xor c(26) xor c(27);
    newcrc(26) := d(6) xor d(4) xor d(3) xor d(0) xor c(18) xor c(24) xor c(27) xor c(28) xor c(30);
    newcrc(27) := d(7) xor d(5) xor d(4) xor d(1) xor c(19) xor c(25) xor c(28) xor c(29) xor c(31);
    newcrc(28) := d(6) xor d(5) xor d(2) xor c(20) xor c(26) xor c(29) xor c(30);
    newcrc(29) := d(7) xor d(6) xor d(3) xor c(21) xor c(27) xor c(30) xor c(31);
    newcrc(30) := d(7) xor d(4) xor c(22) xor c(28) xor c(31);
    newcrc(31) := d(5) xor c(23) xor c(29);
    return newcrc;
  end nextCRC32_D8;

begin

-- Reverse Input:
RevIn: process (data_i)
begin
    reversed_in <= reverse(data_i);
end process;

NextCRC_p : process(reversed_in, t_crcreg)
begin 
    nextcrc <= nextCRC32_D8(reversed_in, t_crcreg);
end process;

--------------------------------------------------------
-- Controll Unit
--------------------------------------------------------

Controllprocess: process (clk_i)
variable control : std_logic_vector (2 downto 0);
begin
    if rising_edge(clk_i) then 
        if (nreset_i = '0') then
            t_crc <= (others => '0');
            t_crcreg <= (others => '0');
            t_crc_valid <= '0';
            control := (others => '0');
        else 
            control := init_i & calc_i & valid_i;
            case control is 
                when "000" =>
                    -- no changes
                when "001" =>
                    t_crc <= not reverse(t_crcreg(23 downto 16));
                    t_crcreg <= t_crcreg(23 downto 0) & x"FF";
                when "010" =>
                    -- no changes
                when "011" =>
                    t_crc <= not reverse(nextcrc(31 downto 24));
                    t_crcreg <= nextcrc;
                when "100" =>
                    t_crcreg <= x"FFFFFFFF";
                when "101" =>
                    t_crcreg <= x"FFFFFFFF";
                    t_crc <= not reverse(t_crcreg(23 downto 16));
                when "110" =>
                    t_crcreg <= x"FFFFFFFF";
                when "111" =>
                    t_crcreg <= x"FFFFFFFF";
                    t_crc <= not reverse(nextcrc(31 downto 24));
                when others =>
                    t_crc <= (others => '0');
                    t_crcreg <= (others => '0');
                    t_crc_valid <= '0';
            end case;
            if (c_crc_remainder = t_crcreg) then 
                t_crc_valid <= '1';
            else
                t_crc_valid <= '0';
            end if;            
        end if;
    end if;
end process;
                    
-------------------------------------------------------------------------
-- Outputs
-------------------------------------------------------------------------                       
crc_valid_o <= t_crc_valid;
crc_o <= t_crc;
crcreg_o <= t_crcreg;                 
           
end Behavioral;
