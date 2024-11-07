library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_aes is
end tb_aes;

architecture bhv of tb_aes is

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
            clk <= '0'; wait for CLK_PERIOD / 2;
            clk <= '1'; wait for CLK_PERIOD / 2;
        end loop;
    end process;

    test_process: process
    begin
   	 	-- Test Case 1
        reset <= '1'; wait for CLK_PERIOD;
        reset <= '0'; wait for CLK_PERIOD;
        plaintext <= x"00112233445566778899aabbccddeeff";  
        key       <= x"0123456789abcdeffedcba1032547698";  
        start <= '1';
        wait for CLK_PERIOD;  
        start <= '0';   

        wait until done = '1'; wait for CLK_PERIOD;        
        
        if ciphertext = x"351f0489f75191c1064d31c2d8c37fba" then
            report "---------- Test 1 Passed ----------";
		else
			report "---------- Test 1 Failed ----------";
		end if;
        
        -- Test Case 2
        reset <= '1'; wait for CLK_PERIOD;
        reset <= '0'; wait for CLK_PERIOD;
        plaintext <= x"ae2d8a571e03ac9c9eb76fac45af8e51";  
        key       <= x"2b7e151628aed2a6abf7158809cf4f3c";  
        start <= '1'; wait for CLK_PERIOD; start <= '0';   
        wait until done = '1'; wait for CLK_PERIOD; 
        if ciphertext = x"f5d3d58503b9699de785895a96fdbaaf" then
            report "---------- Test 2 Passed ----------";
		else
			report "---------- Test 2 Failed ----------";
		end if;
        
--         -- Test Case 3
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"31c7241585bfe2174ef90c5a0de43b44";  
--         key       <= x"1a1b1c1d1e1f20212223242526272829";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"19e20ceb011588530be5696ed46567f1" then
--             report "---------- Test 3 Passed ----------";
-- 		else
-- 			report "---------- Test 3 Failed ----------";
-- 		end if;
        
--         -- Test Case 4
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"746865616e64206b696e6420736e616b";  
--         key       <= x"6bc1bee22e409f96e93d7e4b7a5a7d4a";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"f4f7cdfbc8868c80de9857524c12e157" then
--             report "---------- Test 4 Passed ----------";
-- 		else
-- 			report "---------- Test 4 Failed ----------";
-- 		end if;
        
--         -- Test Case 5
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"ae2d8a571e03ac9c9eb76fac45af8e51";  
--         key       <= x"2b7e151628aed2a6abf7158809cf4f3c";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"f5d3d58503b9699de785895a96fdbaaf" then
--             report "---------- Test 5 Passed ----------";
-- 		else
-- 			report "---------- Test 5 Failed ----------";
-- 		end if;
        
--         -- Test Case 6
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"30c81c46a35ce411e5fbc1191d1b1f12";  
--         key       <= x"8e73b0f7da0e645a8c9b8e20f9c9a3aa";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"8746d2eeeaf1045ae8b8a576627c05ab" then
--             report "---------- Test 6 Passed ----------";
-- 		else
-- 			report "---------- Test 6 Failed ----------";
-- 		end if;
        
--         -- Test Case 7
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"00112233445566778899aabbccddeeff";  
--         key       <= x"f0f1f2f3f4f5f6f7f8f9fafbfcfdfeff";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"c81118b98502cf12684900d1b9a3aded" then
--             report "---------- Test 7 Passed ----------";
-- 		else
-- 			report "---------- Test 7 Failed ----------";
-- 		end if;
        
--         -- Test Case 8
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"00112233445566778899aabbccddeeff";  
--         key       <= x"00000000000000000000000000000000";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"c8a331ff8edd3db175e1545dbefb760b" then
--             report "---------- Test 8 Passed ----------";
-- 		else
-- 			report "---------- Test 8 Failed ----------";
-- 		end if;
        
--         -- Test Case 9
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"6bc1bee22e409f96e93d7e4b7a5a7d4a";  
--         key       <= x"3ad77bb40d7248464e9b5b4c3c2f3a08";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"9a1e0569642c28d0e76281f357995030" then
--             report "---------- Test 9 Passed ----------";
-- 		else
-- 			report "---------- Test 9 Failed ----------";
-- 		end if;
        
--         -- Test Case 10
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"716e65757074656c6561746976656373";  
--         key       <= x"7c6a180b36896a0a8c02787eeefa1f61";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"ef6aeee6eaf76915049100c22d4d6b72" then
--             report "---------- Test 10 Passed ----------";
-- 		else
-- 			report "---------- Test 10 Failed ----------";
-- 		end if;
		
--         -- Test Case 11
--         reset <= '1'; wait for CLK_PERIOD;
--         reset <= '0'; wait for CLK_PERIOD;
--         plaintext <= x"7468697369736d79706c61696e747874";  
--         key       <= x"6162636465666768696a6b6c6d6e6f70";  
--         start <= '1'; wait for CLK_PERIOD; start <= '0';   
--         wait until done = '1'; wait for CLK_PERIOD; 
--         if ciphertext = x"636be6eadd0c6ab8b2f65fedcbbba5f8" then
--             report "---------- Test 11 Passed ----------";
-- 		else
-- 			report "---------- Test 11 Failed ----------";
-- 		end if;

        wait;
    end process;

end architecture bhv;
