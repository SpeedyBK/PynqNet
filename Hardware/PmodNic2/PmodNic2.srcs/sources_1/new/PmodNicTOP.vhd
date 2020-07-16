----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.07.2020 14:03:10
-- Design Name: 
-- Module Name: PmodNicTOP - Behavioral
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

entity PmodNicTOP is
  Generic (SYSTEMCLK : integer := 125000000;
           SPICLK : integer := 8000000);   
  Port ( clk_i : in std_logic;
         rst_i : in std_logic;
         
         -- Serial Interface
         pmod_sclk_o : out std_logic; 
         pmod_mosi : out std_logic;
         pmod_miso : in std_logic;
         pmod_ss_o : out std_logic;
         
         -- Debug
         status_debug_o : out std_logic_vector(1 downto 0);
         status_error_o : out std_logic;
         status_stage_o : out std_logic_vector(3 downto 0);
         
         -- Hardware Interface 
         busy_o   : out std_logic;
         rx_i     : in std_logic;
         rx_len_o : out std_logic_vector(10 downto 0);
         tx_i     : in std_logic;
         tx_len_o : in std_logic_vector(10 downto 0);
         
         -- BRAM
         bram_ena    : out std_logic;
         bram_addr   : out std_logic_vector(10 downto 0);
         bram_wrena  : out std_logic;
         bram_wrdata : out std_logic_vector(7 downto 0);
         bram_rddata : in std_logic_vector(7 downto 0)
         );
end PmodNicTOP;

architecture Behavioral of PmodNicTOP is

signal clk_ena : std_logic;

signal sclk : std_logic;
signal ss : std_logic;

signal wr_valid    : std_logic;
signal wr_data     : std_logic_vector(7 downto 0);
signal wr_done     : std_logic;
signal wr_got_byte : std_logic;

signal rd_valid : std_logic;
signal rd_stop  : std_logic;
signal rd_data  : std_logic_vector(7 downto 0);

begin

SPIClock:entity work.S_Clock
generic map (SYSTEMCLK => SYSTEMCLK, TARGETCLK => SPICLK)
port map (clk_i => clk_i,
          rst_i => rst_i,
          clk_ena_o => clk_ena, 
          clk_serial_o => sclk);

SPIController:entity work.spi
port map( wr_valid => wr_valid,
          wr_data => wr_data,
          wr_done => wr_done,
          wr_got_byte => wr_got_byte,

          rd_valid => rd_valid,
          rd_stop => rd_stop,
          rd_data => rd_data,

          ss => ss,
          pmod_mosi => pmod_mosi,
          pmod_miso => pmod_miso,

          clk_i => '1',
          enable_i => clk_ena,
          rst_i => rst_i
);

ETHController: entity work.controller    
port map ( bram_ena => bram_ena,
           bram_addr => bram_addr,
           bram_wrena => bram_wrena,
           bram_wrdata => bram_wrdata,
           bram_rddata => bram_rddata,

           wr_valid => wr_valid,
           wr_data => wr_data,
           wr_done => wr_done,
           wr_got_byte => wr_got_byte,

           rd_valid => rd_valid,
           rd_stop => rd_stop,
           rd_data => rd_data,

           status_debug => status_debug_o,
           status_error => status_error_o,
           status_stage => status_stage_o,

           busy => busy_o,
           rx => rx_i,
           rx_len => rx_len_o,
           tx => tx_i,
           tx_len => tx_len_o,

           clk => clk_i,
           clk_ena_i => clk_ena,
           rst => rst_i
    );

pmod_sclk_o <= not sclk and not ss;
pmod_ss_o <= ss;

end Behavioral;
