


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity risingEdgeDet_Tb is
--  Port ( );
end risingEdgeDet_Tb;

architecture Behavioral of risingEdgeDet_Tb is

component risingEdgeDet is

Port ( 
input : in std_logic;
clk : in std_logic;
output: out std_logic_vector(7 downto 0)    
);
end component;

signal input,clk :std_logic := '0';
signal output : std_logic_vector(7 downto 0):= (others => '0');



begin

main_map: risingEdgeDet 
Port map ( 
input => input,
clk => clk,
output => output
);


clk_process: process begin
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;  
end process;

main_process: process begin

input <= '0';
wait for 22ns;
input <= '1';
wait for 20ns;
input <= '0';
wait for 24ns;
input <= '1';
wait for 23ns;
input <= '0';
wait for 30ns;
input <= '1';
wait for 25ns;
input <= '0';
wait for 24ns;
input <= '1';
wait for 22ns;
input <= '0';
wait for 30ns;

input <= '1';
wait;

end process;




end Behavioral;
