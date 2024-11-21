library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_keyExpansion is
end entity tb_keyExpansion;

architecture behavioral of tb_keyExpansion is
    component generateKeys is
        port (
            key_in : in  std_logic_vector(127 downto 0);
            round_keys : out std_logic_vector(1407 downto 0)
        );
    end component;

    signal key_in_sig : std_logic_vector(127 downto 0) := x"0123456789abcdeffedcba1032547698";
    signal round_keys_sig : std_logic_vector(1407 downto 0);

begin
    uut: generateKeys port map (
        key_in => key_in_sig,
        round_keys => round_keys_sig
    );

    stim_proc: process
    begin
        key_in_sig <= x"0123456789abcdeffedcba1032547698";
        wait for 100 ns;

--         for i in 0 to 10 loop
--             report "Round " & integer'image(i) & ": " & to_hstring(round_keys_sig((i+1)*128-1 downto i*128));
--             wait for 100 ns;
--         end loop;
        wait;
    end process stim_proc;

end architecture behavioral;