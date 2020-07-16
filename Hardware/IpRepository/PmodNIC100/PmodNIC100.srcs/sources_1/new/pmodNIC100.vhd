----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2020 16:23:28
-- Design Name: 
-- Module Name: pmodNIC100 - Behavioral
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
library work;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pmodNIC100 is
  Port ( clk_i : in std_logic;
         rst_i : in std_logic;
         
         -- SPI
         spi_mosi_o : out std_logic;
         spi_miso_i : in std_logic;
         spi_cs_o : out std_logic;
         spi_clk_o : out std_logic;
         
         -- Flags
         debug_o : out std_logic_vector (1 downto 0);
         error_o : out std_logic;
         stage_o : out std_logic_vector (3 downto 0)
         
         -- Bram
         --bram_ena_o : out std_logic;
         --bram_addr_o : out std_logic_vector(10 downto 0);
         --bram_wrena_o : out std_logic;
         --bram_wrdata_o : out std_logic_vector(7 downto 0);
         --bram_rddata_i : in std_logic_vector (7 downto 0);
         
         -- Stuff
         --busy_o : out std_logic; 
         --rx_i : in std_logic;
         --rx_len_i : in std_logic_vector(10 downto 0);
         --tx : out std_logic;
         --tx_len : out std_logic_vector(10 downto 0)
         );
end pmodNIC100;

architecture Behavioral of pmodNIC100 is

    signal wr_valid    : std_logic;
    signal wr_data     : std_logic_vector(7 downto 0);
    signal wr_done     : std_logic;
    signal wr_have_byte : std_logic;

    signal rd_valid : std_logic;
    signal rd_stop  : std_logic;
    signal rd_data  : std_logic_vector(7 downto 0);

    signal cs : std_logic;

begin

SPI:entity work.SPITranceiver
generic map(DATA_WIDTH => 8)
port map ( clk_i => clk_i,
           rst_i => rst_i,
           
           -- SPI-Interface
           cs_o => cs,
           spi_mosi_o => spi_mosi_o,
           spi_miso_i => spi_miso_i, 
           
           -- Transmitting Data
           wr_data => wr_data,  
           wr_valid => wr_valid,
           wr_done => wr_done,
           wr_have_byte => wr_have_byte,
           
           -- Receiving Data
           rd_data => rd_data, 
           rd_valid => rd_valid,
           rd_stop => rd_stop
);

clock: entity work.PmodCLK
port map ( rst_i => rst_i,
           clk_i => clk_i,
           cs_i => cs,
           PmodSCLK => spi_clk_o);

EthernetController: entity work.ETHController
port map ( clk_i => clk_i,
           rst_i => rst_i,
           have_byte_i => wr_have_byte,
           wr_done_i => wr_done,
           wr_data_o => wr_data,
           rd_valid_i => rd_valid,
           rd_stop_o => rd_stop,
           rd_data_i => rd_data,
           status_debug_o => debug_o,
           status_error_o => error_o,
           status_stage_o => stage_o);

spi_cs_o <= cs;

end Behavioral;
