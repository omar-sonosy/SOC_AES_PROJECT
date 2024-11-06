library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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

architecture bhv of aes_core is
    signal state           : std_logic_vector(127 downto 0);
    
    signal sub_bytes_out  : std_logic_vector(127 downto 0);
    signal shift_rows_out : std_logic_vector(127 downto 0);
    signal mix_columns_out: std_logic_vector(127 downto 0);

    signal round_keys_out  : std_logic_vector(1407 downto 0);
    signal round_counter  : integer range 0 to 10 := 0;
    
    signal busy            : std_logic := '0';
    
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
    u1_SubBytes: subBytes
        port map(
            input_data  => state,
            output_data => sub_bytes_out
        );

    u2_ShiftRows: shiftRows
        port map(
            state_in  => sub_bytes_out,
            state_out => shift_rows_out
        );

    u3_MixColumns: mixColumns
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
            busy <= '0';
        elsif rising_edge(clk) then
            if start = '1' and busy = '0' then
                state <= plaintext;
                busy <= '1';
                done <= '0';
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
                    busy <= '0';
                end if;
            end if;
        end if;
    end process;

end architecture bhv;
