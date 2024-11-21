library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity round is
	port(
    	state	:  in  std_logic_vector(127 downto 0);
        key_round: in  std_logic_vector(127 downto 0);
        round_out: out std_logic_vector(127 downto 0)
        );
end round;


architecture decrypt of round is

	signal shift_rows_out	: std_logic_vector(127 downto 0);
    signal inv_sub_bytes_out: std_logic_vector(127 downto 0);
    signal round_key_out	: std_logic_vector(127 downto 0);
    
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


begin

	INV_SHIFT_ROWS	: entity work.shiftRows(decrypt) 
    	port map(  
        	state_in => state,
    		state_out => shift_rows_out);

	INVER_SUB_BYTES	: entity work.subBytes(decrypt) 
    	port map(	
        	input_data => shift_rows_out,
    		output_data => inv_sub_bytes_out);
                                                                
    round_key_out <= inv_sub_bytes_out xor key_round;
                                            
	INVER_MIX_COLUMNS: entity work.mixColumns(decrypt) 
    	port map(
        	input_data => round_key_out,
    		output_data => round_out);  
            
end decrypt;




