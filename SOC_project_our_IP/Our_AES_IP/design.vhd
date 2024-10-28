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
    signal state          : std_logic_vector(127 downto 0);
    signal round_key      : std_logic_vector(127 downto 0);
    signal round_counter  : integer range 0 to 10 := 0;
    signal current_key	  : std_logic_vector(127 downto 0);

    signal sub_bytes_out  : std_logic_vector(127 downto 0);
    signal shift_rows_out : std_logic_vector(127 downto 0);
    signal mix_columns_out: std_logic_vector(127 downto 0);
    signal round_key_out  : std_logic_vector(127 downto 0);

    signal busy           : std_logic := '0';
    signal key_done       : std_logic := '0';
    
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

    component keyExpansion is
        port (
            clk         : in  std_logic;
            rst         : in  std_logic;
            key         : in  std_logic_vector(127 downto 0);
            round_index : in  integer range 0 to 10;
            round_key   : out std_logic_vector(127 downto 0);
            done        : out std_logic
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

    u4_KeyExpansion: keyExpansion
        port map(
            clk         => clk,
            rst         => reset,
            key         => current_key,
            round_index => round_counter,
            round_key   => round_key_out,
            done	=> key_done
        );
        
    -- AES process
    process (clk, reset)
    begin
        if reset = '1' then
            state <= (others => '0');
	    ciphertext <= (others => '0');
            round_counter <= 0;
            done <= '0';
            busy <= '0';
            current_key <= key;
        elsif rising_edge(clk) then
            if start = '1' and busy = '0' then
                state <= plaintext;
		ciphertext <= (others => '0');
                busy <= '1';
                done <= '0';
                round_counter <= 0;
                current_key <= key;
            elsif busy = '1' then
                if round_counter = 0 then
                    if key_done = '1' then
                    	state <= state xor key;
                    	round_counter <= round_counter + 1;
                    end if;
                elsif round_counter < 10 then
                    if key_done = '1' then
                        state <= mix_columns_out xor round_key_out;  
                        current_key <= round_key_out;
                        round_counter <= round_counter + 1;
                    end if;   
                else
                    if key_done = '1' then
                        ciphertext <= shift_rows_out xor round_key_out;
                        done <= '1';
                        busy <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

end architecture bhv;
