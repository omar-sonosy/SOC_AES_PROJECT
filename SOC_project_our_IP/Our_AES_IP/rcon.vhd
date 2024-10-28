library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rcon is
    port (
        round_index : in integer range 1 to 10;  
        rcon_value  : out std_logic_vector(31 downto 0)  
    );
end entity rcon;

architecture bhv of rcon is
begin
    process(round_index)
    begin
        case round_index is
            when  1 => rcon_value <= x"01000000";
            when  2 => rcon_value <= x"02000000";
            when  3 => rcon_value <= x"04000000";
            when  4 => rcon_value <= x"08000000";
            when  5 => rcon_value <= x"10000000";
            when  6 => rcon_value <= x"20000000";
            when  7 => rcon_value <= x"40000000";
            when  8 => rcon_value <= x"80000000";
            when  9 => rcon_value <= x"1B000000";
            when 10 => rcon_value <= x"36000000";
            when others => rcon_value <= (others => '0');  
        end case;
    end process;

end architecture bhv;
