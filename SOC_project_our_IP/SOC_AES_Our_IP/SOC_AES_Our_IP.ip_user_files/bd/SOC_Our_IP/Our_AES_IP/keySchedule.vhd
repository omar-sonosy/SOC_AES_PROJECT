library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity keyExpansion is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        key         : in  std_logic_vector(127 downto 0);
        round_index : in  integer range 0 to 10;
        round_key   : out std_logic_vector(127 downto 0);
        done        : out std_logic
    );
end keyExpansion;

architecture bhv of keyExpansion is

    component sbox
        port (
            input_byte  : in  std_logic_vector(7 downto 0);
            output_byte : out std_logic_vector(7 downto 0)
        );
    end component;
    
    component rcon
        port (
            round_index : in integer range 1 to 10;  
            rcon_value  : out std_logic_vector(31 downto 0)  
        );
    end component;

    type word_array is array(0 to 3) of std_logic_vector(31 downto 0);
    signal words         : word_array := (others => (others => '0'));
    signal sub_word      : std_logic_vector(31 downto 0) := (others => '0');
    signal rcon_output   : std_logic_vector(31 downto 0) := (others => '0');
    signal rot_output    : std_logic_vector(31 downto 0) := (others => '0');
    signal sbox_out0, sbox_out1, sbox_out2, sbox_out3 : std_logic_vector(7 downto 0) := (others => '0'); 
    signal w0, w1, w2, w3 : std_logic_vector(31 downto 0) := (others => '0'); 
    
    type int_array is array(1 to 10) of integer;
    signal ok : int_array := (others => 0);
    signal r0 : integer := 0;
    
begin

    sbox0: sbox port map(input_byte => words(3)(31 downto 24), output_byte => sbox_out0);
    sbox1: sbox port map(input_byte => words(3)(23 downto 16), output_byte => sbox_out1);
    sbox2: sbox port map(input_byte => words(3)(15 downto  8), output_byte => sbox_out2);
    sbox3: sbox port map(input_byte => words(3)( 7 downto  0), output_byte => sbox_out3);
    rcon_inst: rcon port map (round_index => round_index, rcon_value => rcon_output);
    
    sub_word <= sbox_out0 & sbox_out1 & sbox_out2 & sbox_out3;
    rot_output <= sub_word(23 downto 0) & sub_word(31 downto 24); 

    w0 <= words(0) xor (rot_output xor rcon_output);
    w1 <= words(1) xor w0;
    w2 <= words(2) xor w1;
    w3 <= words(3) xor w2;

    process(clk, rst)
    begin
        if rst = '1' then  
            for i in 0 to 3 loop
                words(i) <= (others => '0');
            end loop;
            round_key <= (others => '0');
            done <= '0';
            ok <= (others => 0);
            r0 <= 0;
        elsif rising_edge(clk) then
            done <= '0';
            if round_index = 0 then
				r0 <= r0 + 1;
                if r0 = 2 then    
                    round_key <= key; 
                    done <= '1';
                else
                    done <= '0';
                end if; 
            else
              done <= '0';
              for i in 0 to 3 loop
                  words(i) <= key(127 - (i * 32) downto 96 - (i * 32));
              end loop;
              
              sub_word <= sbox_out0 & sbox_out1 & sbox_out2 & sbox_out3;

              ok(round_index) <= ok(round_index) + 1;

              if round_index < 11 then
                if ok(round_index) = 2 then            
                	round_key <= w0 & w1 & w2 & w3; 
                    done <= '1';
                else
                    done <= '0';
                end if; 
              end if;
            end if;
        end if;
        
    end process;

end architecture bhv;


