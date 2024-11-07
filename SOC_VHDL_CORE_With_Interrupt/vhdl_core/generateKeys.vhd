library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity generateKeys is
    port (
        key_in : in  std_logic_vector(127 downto 0);
        round_keys : inout std_logic_vector(1407 downto 0)
    );
end entity generateKeys;

architecture bhv of generateKeys is
    component KeyExpansion
        port (
            key        : in  std_logic_vector(127 downto 0);  
            round      : in  integer range 0 to 10;          
            round_key  : out std_logic_vector(127 downto 0)  
        );
    end component;

begin
	round_keys(127 downto 0) <= key_in;
    
    generate_round_keys: for i in 1 to 10 generate
        key_exp_i: KeyExpansion port map (
            key => round_keys(i*128-1 downto (i-1)*128),
            round => i,
            round_key => round_keys((i+1)*128-1 downto i*128)
        );

    end generate;
end architecture bhv;