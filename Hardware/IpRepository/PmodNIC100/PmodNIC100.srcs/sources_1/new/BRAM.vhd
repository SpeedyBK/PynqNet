----------------------------------------------------------------------------------
-- Company: Uni Kassel FG Digitech.
-- Engineer: Benjamin Lagershausen-Keßler
-- 
-- Create Date: 05.05.2020 11:46:54
-- Design Name: Dual Port BRAM
-- Module Name: BRAM - Behavioral
-- Project Name: BRAM
-- Target Devices: Pynq Board
-- Tool Versions: 
-- Description: This implements a dual port BRAM with an ACTIVE LOW ASYNCHRONOUS RESET.
-- If you want to read data from the BRAM, A/Bena_i has to be '1' and A/Bwrena_i has to 
-- be '0'. If you want to write data to the BRAM, than both A/Bena_i and A/Bwrena_i has 
-- to be '1'.
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

entity BRAM is
    Generic (
             SIZE       : integer := 2048;  
             ADDR_WIDTH : integer := 11;  
             DATA_WIDTH  : integer := 8
             );
    Port (  
           -- Port A
           Aclk_i : in STD_LOGIC;
           Arst_i : in STD_LOGIC;
           Aena_i : in std_logic;
           Aaddr_i : in std_logic_vector(ADDR_WIDTH-1 downto 0);
           Awrena_i : in std_logic;
           Awrdata_i : in std_logic_vector(DATA_WIDTH-1 downto 0);
           Arddata_o : out std_logic_vector(DATA_WIDTH-1 downto 0);
           
           -- Port B
           Bclk_i : in std_logic;
           Brst_i : in std_logic;
           Bena_i : in std_logic;
           Baddr_i : in std_logic_vector(ADDR_WIDTH-1 downto 0);
           Bwrena_i : in std_logic;
           Bwrdata_i : in std_logic_vector (DATA_WIDTH-1 downto 0);
           Brddata_o : out std_logic_vector(DATA_WIDTH-1 downto 0)
           );
end BRAM;

architecture Behavioral of BRAM is

    type mem_t is array (SIZE-1 downto 0) of std_logic_vector(DATA_WIDTH-1 downto 0);
    shared variable mem : mem_t := (others => (others => '0'));

begin

-- Port A:
PortA:process (Aclk_i, Arst_i)
begin
    -- Async Reset Low Active:
    if Arst_i = '0' then
        Arddata_o <= (others => '0');
    elsif rising_edge(Aclk_i) then
        if Aena_i = '1' then
            -- Read Data:
            Arddata_o <= mem(to_integer(unsigned(Aaddr_i)));
            if Awrena_i = '1' then
                -- Write Data:
                mem(to_integer(unsigned(Aaddr_i))):= Awrdata_i;
            end if;
        end if;
    end if;
end process;

-- Port B:
PortB:process (Bclk_i, Brst_i)
begin
    -- Async Reset Low Active:
    if Brst_i = '0' then
        Brddata_o <= (others => '0');
    elsif rising_edge(Aclk_i) then
        if Bena_i = '1' then
            -- Read Data:
            Brddata_o <= mem(to_integer(unsigned(Baddr_i)));
            if Bwrena_i = '1' then
                -- Write Data:
                mem(to_integer(unsigned(Baddr_i))):= Bwrdata_i;
            end if;
        end if;
    end if;
end process;

end Behavioral;
