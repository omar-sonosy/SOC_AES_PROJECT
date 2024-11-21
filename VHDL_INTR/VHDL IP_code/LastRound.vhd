library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity last_round is
	port(
    	state	 : in  std_logic_vector(127 downto 0);
        key_round: in  std_logic_vector(127 downto 0);
        round_out: out std_logic_vector(127 downto 0)
        );
end last_round;

architecture decrypt of last_round is

	signal shift_rows_out	: std_logic_vector(127 downto 0);
    signal inv_sub_bytes_out: std_logic_vector(127 downto 0);
    
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

begin

	INV_SHIFT_ROWS	: entity work.shiftRows(decrypt) 
      port map(  
          state_in => state,
          state_out => shift_rows_out);

	INVER_SUB_BYTES	: entity work.subBytes(decrypt) 
    	port map(	
        	input_data => shift_rows_out,
    		output_data => inv_sub_bytes_out);
                                                                
    round_out<= inv_sub_bytes_out xor key_round;
                               
end decrypt;