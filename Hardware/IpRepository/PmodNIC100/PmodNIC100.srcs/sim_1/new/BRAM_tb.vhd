----------------------------------------------------------------------------------
-- Company: Uni Kassel FG Digitech 
-- Engineer: Benjamin Lagershausen-Keßler
-- 
-- Create Date: 05.05.2020 12:48:03
-- Design Name: BRAM TestBench
-- Module Name: BRAM_tb - Behavioral
-- Project Name: BRAM
-- Target Devices: PynqBoard
-- Tool Versions: 
-- Description: Implementation of a testbench for the BRAM block.
-- It implements a FSM, which start with resetting the BRAM Component. 
-- In the next state it writes data to all addresses of the BRAM via 
-- Port A.
-- After that the data is read via Port A.
-- The previous two steps are repeated via Port B with different Data. 
-- When this is done, the FSM starts at the Reset State again. 
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

entity BRAM_tb is
Generic (
          SIZE       : integer := 2048;  
          ADDR_WIDTH : integer := 11;  
          DATA_WIDTH  : integer := 8
         );   
--  Port ( );
end BRAM_tb;

architecture Behavioral of BRAM_tb is

component BRAM is
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
end component;

signal Aclk_i : STD_LOGIC := '0';
signal Arst_i : STD_LOGIC;
signal Aena_i : std_logic;
signal Aaddr_i : std_logic_vector(ADDR_WIDTH-1 downto 0);
signal Awrena_i : std_logic;
signal Awrdata_i : std_logic_vector(DATA_WIDTH-1 downto 0);
signal Arddata_o : std_logic_vector(DATA_WIDTH-1 downto 0);

signal Brst_i : STD_LOGIC;
signal Bena_i : std_logic;
signal Baddr_i : std_logic_vector(ADDR_WIDTH-1 downto 0);
signal Bwrena_i : std_logic;
signal Bwrdata_i : std_logic_vector(DATA_WIDTH-1 downto 0);
signal Brddata_o : std_logic_vector(DATA_WIDTH-1 downto 0);

type state_t is (Reset, WriteA, ReadA, WriteB, ReadB);
signal state : state_t := Reset;

begin

-- Clocks
ClockA:process
begin
    wait for 10 ns;
        Aclk_i <= not Aclk_i;
end process;

-- Test FSM
Test:process(Aclk_i)
variable i : integer := 0;
begin
    if rising_edge(Aclk_i) then 
        case state is 
            when Reset =>
                Arst_i <= '0';
                Brst_i <= '0';
                Aena_i <= '0';
                Aaddr_i <= (others => '0');
                Awrena_i <= '0';
                Awrdata_i <= (others => '0');
                Bena_i <= '0';
                Baddr_i <= (others => '0');
                Bwrena_i <= '0';
                Bwrdata_i <= (others => '0');
                if (i < 20) then
                    i := i + 1;
                else 
                    i := 0;
                    state <= WriteA;
                end if;
            when WriteA =>
                Arst_i <= '1';
                Brst_i <= '1';
                Aena_i <= '1';
                Awrena_i <= '1';
                if (i < SIZE) then 
                    Aaddr_i <= std_logic_vector(to_unsigned(i, Aaddr_i'length));
                    Awrdata_i <= std_logic_vector(to_unsigned(i/8, Awrdata_i'length));
                    i := i + 1;
                else 
                    i := 0;
                    Awrena_i <= '0';
                    state <= ReadA;
                end if;
            when ReadA =>
                if (i < SIZE) then 
                    Aaddr_i <= std_logic_vector(to_unsigned(i, Aaddr_i'length));
                    i := i + 1;
                else 
                    i := 0;
                    Aena_i <= '0';
                    state <= WriteB;
                end if;
            when WriteB =>
                Bena_i <= '1';
                Bwrena_i <= '1';
                if (i < SIZE) then 
                    Baddr_i <= std_logic_vector(to_unsigned(i, Aaddr_i'length));
                    Bwrdata_i <= std_logic_vector(to_unsigned(1, Awrdata_i'length));
                    i := i + 1;
                else      
                    i := 0;
                    Bwrena_i <= '0';
                    state <= ReadB; 
                end if;
            when ReadB =>
                if (i < SIZE) then 
                    Baddr_i <= std_logic_vector(to_unsigned(i, Baddr_i'length));
                    i := i + 1;
                else 
                    i := 0;
                    Bena_i <= '0';
                    state <= Reset;
                end if;
            when others => 
                state <= Reset;
        end case;
    end if;
end process;    
                                


DUT:BRAM
port map ( Aclk_i => Aclk_i,
           Arst_i => Arst_i,
           Aena_i => Aena_i,
           Aaddr_i => Aaddr_i,
           Awrena_i => Awrena_i,
           Awrdata_i => Awrdata_i,
           Arddata_o => Arddata_o,
           
           Bclk_i => Aclk_i,
           Brst_i => Brst_i,
           Bena_i => Bena_i,
           Baddr_i => Baddr_i,
           Bwrena_i => Bwrena_i,
           Bwrdata_i => Bwrdata_i,
           Brddata_o => Brddata_o );

end Behavioral;
