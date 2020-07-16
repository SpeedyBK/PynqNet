----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2020 13:38:50
-- Design Name: 
-- Module Name: SPITranceiver - Behavioral
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

entity SPITranceiver is
    generic (DATA_WIDTH : integer := 8);
    Port ( clk_i : in std_logic;
           rst_i : in std_logic;
           
           -- SPI-Interface
           cs_o : out std_logic;
           spi_mosi_o : out std_logic;
           spi_miso_i : in std_logic; 
           
           -- Transmitting Data
           wr_data : in std_logic_vector (DATA_WIDTH-1 downto 0);
           wr_valid : in std_logic;
           wr_done : out std_logic;
           wr_have_byte : out std_logic;
           
           -- Receiving Data
           rd_data : out std_logic_vector (DATA_WIDTH-1 downto 0);
           rd_valid : out std_logic;
           rd_stop : in std_logic );
end SPITranceiver;

architecture Behavioral of SPITranceiver is

type spi_state_t is (idle, reading, writing, pause);
signal spi_state : spi_state_t := idle;

signal running : std_logic;
signal i : integer range 0 to DATA_WIDTH-1;

begin

SPI_FSM: process (clk_i, rst_i) 
variable tmp : std_logic_vector (DATA_WIDTH-1 downto 0);
begin
    if (rst_i = '0') then
    
        -- Write Signals:
        wr_done <= '0';
        wr_have_byte <= '0';
        
        -- Read Signals:
        rd_data <= (others=>'0');
        rd_valid <= '0';
        
        -- SPI:
        cs_o <= '1';
        spi_mosi_o <= '0';
        
        -- State:
        spi_state <= idle;
        
        -- Internal signals:
        running <= '0';
        i <= 0;
        tmp := (others => '0');
    
    elsif rising_edge(clk_i) then 
        
        case spi_state is 
            when idle =>
                
                wr_done <= '0';
                rd_valid <= '0';
                
                if (wr_valid = '1') then 
                    
                    spi_state <= writing;
                    cs_o <= '0';
                    
                    if (running = '1') then 
                        spi_mosi_o <= wr_data(DATA_WIDTH-1);
                        i <= DATA_WIDTH-2;
                    else 
                        i <= DATA_WIDTH-1;
                    end if;     
                    
                    tmp := wr_data;
                    running <= '1';
                    wr_have_byte <= '1';
                
                elsif (rd_stop = '0') then 
                
                    spi_state <= reading;
                    cs_o <= '0';
                    i <= DATA_WIDTH-1;
                    running <= '1';
                    
                else 
                    
                    if (running = '1') then 
                        i <= 1;
                        spi_state <= pause;
                    end if;
                    running <= '0';
                
                end if;                    
            
            when reading =>
                 
                tmp(i) := spi_miso_i;
                    
                    if (rd_stop = '1') then
                        spi_state <= idle;
                        cs_o <= '1';
                    elsif (i = 0) then
                        rd_valid <= '1';
                        rd_data <= tmp(DATA_WIDTH-1 downto 0);
                        i <= 7;
                    else
                        i <= i - 1;
                        rd_valid <= '0';
                    end if;
            
            when writing =>
            
                wr_have_byte <= '0';
                spi_mosi_o <= tmp(i);
                if (i = 0) then
                    spi_state <= idle;
                    wr_done <= '1';
                else
                    i <= i - 1;
                end if;
            
            when others =>
                cs_o <= '1';
                if (i = 0) then
                    spi_state <= idle;
                else
                    i <= i - 1;
                end if;
        
        end case;    
    end if;
end process;

end Behavioral;
