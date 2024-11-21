library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
use ieee.std_logic_textio.all;

entity tb_aes_file is
end tb_aes_file;

architecture bhv of tb_aes_file is

    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal start       : std_logic := '0';
    signal plaintext   : std_logic_vector(127 downto 0) := (others => '0');
    signal key         : std_logic_vector(127 downto 0) := (others => '0');
    signal ciphertext  : std_logic_vector(127 downto 0);
    signal done        : std_logic;

    constant clk_period : time := 20 ns;

    component aes_core is
      port(
          clk         : in std_logic;
          reset       : in std_logic;
          start       : in std_logic;
          plaintext   : in std_logic_vector(127 downto 0);
          key         : in std_logic_vector(127 downto 0);
          ciphertext  : out std_logic_vector(127 downto 0);
          done        : out std_logic
      );
    end component;

    file plaintext_file : text open read_mode is "plaintexts_10000.txt"; 
    file key_file : text open read_mode is "keys_10000.txt";
    file ciphertext_file : text open read_mode is "ciphertexts_lib_10000.txt"; 
    file write_ciphertext_file : text open write_mode is "ciphertexts_sim_10000.txt"; 
    
begin

    DUT: entity work.aes_core(bhv)
        port map(
            clk         => clk,
            reset       => reset,
            start       => start,
            plaintext   => plaintext,
            key         => key,
            ciphertext  => ciphertext,
            done        => done
        );

    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for clk_period / 2;
            clk <= '1'; wait for clk_period / 2;
        end loop;
    end process;
    

    read_process: process
        variable line_buffer : line;
        variable temp_plaintext : std_logic_vector(127 downto 0);
        variable temp_key : std_logic_vector(127 downto 0);
    begin

   		while not ENDFILE(plaintext_file) loop
        	reset <= '1'; wait for clk_period;
            reset <= '0'; wait for clk_period;
            
        	readline(plaintext_file, line_buffer);
            hread(line_buffer, temp_plaintext);
            plaintext <= temp_plaintext;
            
            readline(key_file, line_buffer);
            hread(line_buffer, temp_key);
            key <= temp_key;
            
            start <= '1'; wait for clk_period; start <= '0';  

            wait until done = '1';  
    	end loop;
        
        reset <= '1'; wait for clk_period;
        reset <= '0'; wait for clk_period;
        wait;
    end process;

    write_process: process(done)
        variable ciphertext_buffer : line;
        variable temp_ciphertext : std_logic_vector(127 downto 0);
        variable cnt : integer := 0;
        variable write_buffer : line;
    begin
		if done = '1' then 
          write(write_buffer, to_hstring(ciphertext)); 
      	  writeline(write_ciphertext_file, ciphertext_buffer);
          
          cnt := cnt + 1;
      	  readline(ciphertext_file, ciphertext_buffer);
          hread(ciphertext_buffer, temp_ciphertext);
		  if ciphertext = temp_ciphertext and cnt > 2998 then
          	report "---------- Test " & integer'image(cnt) & " Passed ----------";
		  end if;
          assert (ciphertext = temp_ciphertext) report "Mismatch in test case number: " & integer'image(cnt) severity ERROR;
           
        end if;
    end process;

end architecture bhv;
