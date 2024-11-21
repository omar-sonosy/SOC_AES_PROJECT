library IEEE;
use IEEE.std_logic_1164.all;


entity aes_core is
	port(
        clk         : in  std_logic;
        reset       : in  std_logic;
        start       : in  std_logic;
        plaintext   : in  std_logic_vector(127 downto 0);
        key         : in  std_logic_vector(127 downto 0);
        ciphertext  : out std_logic_vector(127 downto 0);
        done        : out std_logic
    );
end aes_core;


architecture decrypt of aes_core is
	
    signal state: std_logic_vector(127 downto 0);
    signal round_out: std_logic_vector(127 downto 0);
    signal round_key: std_logic_vector(127 downto 0);
    signal last_round_state: std_logic_vector(127 downto 0);
    signal round_keys_out  : std_logic_vector(1407 downto 0);
    signal round_counter  : integer range 0 to 10 := 0;
    
    signal busy            : std_logic := '0';
    signal done_temp       : std_logic := '0';
    signal start_prev      : std_logic := '0';
    
    component generateKeys is
        port (
            key_in 	   : in  std_logic_vector(127 downto 0);
        	round_keys : inout std_logic_vector(1407 downto 0)
        );
    end component;
    
    component round is
	port(
    	state	 : in  std_logic_vector(127 downto 0);
        key_round: in  std_logic_vector(127 downto 0);
        round_out: out std_logic_vector(127 downto 0)
        );
    end component;
    
     component last_round is
	port(
    	state	 : in  std_logic_vector(127 downto 0);
        key_round: in  std_logic_vector(127 downto 0);
        round_out: out std_logic_vector(127 downto 0)
        );
    end component;

begin
	GENERATE_KEYS: entity work.generateKeys(bhv)
        port map(
            key_in     => key,
            round_keys => round_keys_out
        );
        
    ROUND_i: entity work.round(decrypt) 
    	port map (
        	state => state,
            key_round => round_key, 
            round_out => round_out);
    
    LAST_ROUND_i: entity work.last_round(decrypt) 
    	port map(
    		state => last_round_state, 
    		key_round => round_keys_out(127 downto 0),
            round_out => ciphertext);
	
	process (clk, reset)
    begin
        if reset = '1' then
            state <= (others => '0');
            round_counter <= 0;
            done <= '0';
            done_temp <= '0';
            start_prev <= '0';
            busy <= '0';
        elsif rising_edge(clk) then
        	
            if start = '0' and start_prev = '1' and busy = '0' then
                state <= plaintext;
                busy <= '1';
                done <= '0';
                done_temp <= '0';
                round_counter <= 0;
            elsif busy = '1' then
                if round_counter = 0 then
                    state <= state xor round_keys_out(1407 downto 1280);
                    round_counter <= round_counter + 1;
                    round_key <= round_keys_out(1279 downto 1152);
                elsif round_counter < 9 then
                
                	case round_counter is
                        when 1 => round_key <= round_keys_out(1151 downto 1024);
                        when 2 => round_key <= round_keys_out(1023 downto 896);
                        when 3 => round_key <= round_keys_out(895 downto 768);
                        when 4 => round_key <= round_keys_out(767 downto 640);
                        when 5 => round_key <= round_keys_out(639 downto 512);
                        when 6 => round_key <= round_keys_out(511 downto 384);
                        when 7 => round_key <= round_keys_out(383 downto 256);
                        when 8 => round_key <= round_keys_out(255 downto 128);
                        when others => round_key<= (others => '0');
                    end case;
                    state <= round_out;
                    round_counter <= round_counter + 1;
                else
                	last_round_state<=round_out;
                    done <= '1';
                    done_temp <= '1';
                    busy <= '0';
                end if;
            end if;
			if done_temp = '1' then
            	done <= '0';
            end if;
            start_prev <= start;
        end if;
    end process;

end decrypt;



architecture encrypt of aes_core is
    signal state           : std_logic_vector(127 downto 0);
    
    signal sub_bytes_out  : std_logic_vector(127 downto 0);
    signal shift_rows_out : std_logic_vector(127 downto 0);
    signal mix_columns_out: std_logic_vector(127 downto 0);

    signal round_keys_out  : std_logic_vector(1407 downto 0);
    signal round_counter  : integer range 0 to 10 := 0;
    
    signal busy            : std_logic := '0';
    signal done_temp       : std_logic := '0';
    signal start_prev      : std_logic := '0';
    
	-- Declare the components
    component subBytes is
        port(
            input_data  : in  std_logic_vector(127 downto 0);
            output_data : out std_logic_vector(127 downto 0)
        );
    end component;
    
    component shiftRows is
        port(
            state_in  : in  std_logic_vector(127 downto 0);
            state_out : out std_logic_vector(127 downto 0)
        );
    end component;

    component mixColumns is
        port(
            input_data  : in  std_logic_vector(127 downto 0);
            output_data : out std_logic_vector(127 downto 0)
        );
    end component;

    component generateKeys is
        port (
            key_in 	   : in  std_logic_vector(127 downto 0);
        	round_keys : inout std_logic_vector(1407 downto 0)
        );
    end component;

begin

    -- Instantiate the components
    u1_SubBytes: entity work.subBytes(encrypt)
        port map(
            input_data  => state,
            output_data => sub_bytes_out
        );

    u2_ShiftRows: entity work.shiftRows(encrypt)
        port map(
            state_in  => sub_bytes_out,
            state_out => shift_rows_out
        );

    u3_MixColumns: entity work.mixColumns(encrypt)
        port map(
            input_data  => shift_rows_out,
            output_data => mix_columns_out
        );

    u4_genKeys: generateKeys
        port map(
            key_in     => key,
            round_keys => round_keys_out
        );
        
	-- AES process
    process (clk, reset)
    begin
        if reset = '1' then
            state <= (others => '0');
            round_counter <= 0;
            done <= '0';
            done_temp <= '0';
            start_prev <= '0';
            busy <= '0';
        elsif rising_edge(clk) then
       		start_prev <= start;
            
            if start = '0' and start_prev = '1' and busy = '0' then
                state <= plaintext;
                busy <= '1';
                done <= '0';
                done_temp <= '0';
                round_counter <= 0;
            elsif busy = '1' then
                if round_counter = 0 then
                    state <= state xor round_keys_out(127 downto 0);
                    round_counter <= round_counter + 1;
                elsif round_counter < 10 then
                    state <= mix_columns_out xor round_keys_out((round_counter+1)*128-1 downto round_counter*128);  
                    round_counter <= round_counter + 1;   
                else
                    ciphertext <= shift_rows_out xor round_keys_out(1407 downto 1280);
                    done <= '1';
                    done_temp <= '1';
                    busy <= '0';
                end if;
            end if;
			if done_temp = '1' then
            	done <= '0';
            end if;
        end if;
    end process;

end architecture encrypt;
