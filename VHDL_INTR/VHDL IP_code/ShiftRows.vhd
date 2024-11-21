library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shiftRows is
    port(
        state_in  : in  std_logic_vector(127 downto 0);
        state_out : out std_logic_vector(127 downto 0)
    );
end shiftRows;

architecture encrypt of shiftRows is
begin
    process (state_in)
    begin
        state_out(8*15 + 7 downto 8*15) <= state_in(8*15 + 7 downto 8*15);
        state_out(8*14 + 7 downto 8*14) <= state_in(8*10 + 7 downto 8*10);
        state_out(8*13 + 7 downto 8*13) <= state_in(8* 5 + 7 downto 8* 5); 
        state_out(8*12 + 7 downto 8*12) <= state_in(8* 0 + 7 downto 8* 0);
        state_out(8*11 + 7 downto 8*11) <= state_in(8*11 + 7 downto 8*11);
        state_out(8*10 + 7 downto 8*10) <= state_in(8* 6 + 7 downto 8* 6); 
        state_out(8* 9 + 7 downto 8* 9) <= state_in(8* 1 + 7 downto 8* 1);
        state_out(8* 8 + 7 downto 8* 8) <= state_in(8*12 + 7 downto 8*12);
        state_out(8* 7 + 7 downto 8* 7) <= state_in(8* 7 + 7 downto 8* 7);
        state_out(8* 6 + 7 downto 8* 6) <= state_in(8* 2 + 7 downto 8* 2);
        state_out(8* 5 + 7 downto 8* 5) <= state_in(8*13 + 7 downto 8*13);
        state_out(8* 4 + 7 downto 8* 4) <= state_in(8* 8 + 7 downto 8* 8);
        state_out(8* 3 + 7 downto 8* 3) <= state_in(8* 3 + 7 downto 8* 3);
        state_out(8* 2 + 7 downto 8* 2) <= state_in(8*14 + 7 downto 8*14);
        state_out(8* 1 + 7 downto 8* 1) <= state_in(8* 9 + 7 downto 8* 9);
        state_out(8* 0 + 7 downto 8* 0) <= state_in(8* 4 + 7 downto 8* 4); 	
    end process;
end architecture encrypt;



architecture decrypt of shiftRows is
begin
    process (state_in)
    begin
        state_out(8*15 + 7 downto 8*15) <= state_in(8*15 + 7 downto 8*15);
        state_out(8*10 + 7 downto 8*10) <= state_in(8*14 + 7 downto 8*14);
        state_out(8* 5 + 7 downto 8* 5) <= state_in(8*13 + 7 downto 8*13); 
        state_out(8* 0 + 7 downto 8* 0) <= state_in(8*12 + 7 downto 8*12);
        state_out(8*11 + 7 downto 8*11) <= state_in(8*11 + 7 downto 8*11);
        state_out(8* 6 + 7 downto 8* 6) <= state_in(8*10 + 7 downto 8*10); 
        state_out(8* 1 + 7 downto 8* 1) <= state_in(8* 9 + 7 downto 8* 9);
        state_out(8*12 + 7 downto 8*12) <= state_in(8* 8 + 7 downto 8* 8);
        state_out(8* 7 + 7 downto 8* 7) <= state_in(8* 7 + 7 downto 8* 7);
        state_out(8* 2 + 7 downto 8* 2) <= state_in(8* 6 + 7 downto 8* 6);
        state_out(8*13 + 7 downto 8*13) <= state_in(8* 5 + 7 downto 8* 5);
        state_out(8* 8 + 7 downto 8* 8) <= state_in(8* 4 + 7 downto 8* 4);
        state_out(8* 3 + 7 downto 8* 3) <= state_in(8* 3 + 7 downto 8* 3);
        state_out(8*14 + 7 downto 8*14) <= state_in(8* 2 + 7 downto 8* 2);
        state_out(8* 9 + 7 downto 8* 9) <= state_in(8* 1 + 7 downto 8* 1);
        state_out(8* 4 + 7 downto 8* 4) <= state_in(8* 0 + 7 downto 8* 0); 	
    end process;
end architecture decrypt;
