library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.all;



entity risingEdgeDet is

Port ( 
input : in std_logic;
clk : in std_logic;
output: out std_logic_vector(7 downto 0)    
);
end risingEdgeDet;

architecture Behavioral of risingEdgeDet is

signal prev_in : std_logic := '0';
signal rising_edge_detector: std_logic := '0';

signal counter : std_logic_vector(7 downto 0) := (others => '0' );

begin

main: process (clk) begin

    if(rising_edge(clk)) then
      prev_in <= input;
      
  
      if(prev_in = '0' and input ='1') then
        rising_edge_detector <= '1';
      else
        rising_edge_detector <= '0';
      end if;
     
    
     if (rising_edge_detector = '1') then
     counter <= counter + 1;
     end if;
     

    end if;

end process;

 
output <= counter;


end Behavioral;
