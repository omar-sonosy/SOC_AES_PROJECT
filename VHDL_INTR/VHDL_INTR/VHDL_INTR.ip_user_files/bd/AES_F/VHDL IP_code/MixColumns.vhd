library ieee;
use ieee.std_logic_1164.all;

entity mixColumns is
	port (
		input_data  : in  std_logic_vector(127 downto 0);
		output_data : out std_logic_vector(127 downto 0)
	);
end mixColumns;

architecture encrypt of mixColumns is
	
begin
	mixColumns_0 : entity work.computeColumn(encrypt)
		port map(
			input_data  => input_data(31 downto 0),
			output_data => output_data(31 downto 0)
		);
	mixColumns_1 : entity work.computeColumn(encrypt)
		port map(
			input_data  => input_data(63 downto 32),
			output_data => output_data(63 downto 32)
		);		
	mixColumns_2 : entity work.computeColumn(encrypt)
		port map(
			input_data  => input_data(95 downto 64),
			output_data => output_data(95 downto 64)
		);
	mixColumns_3 : entity work.computeColumn(encrypt)
		port map(
			input_data  => input_data(127 downto 96),
			output_data => output_data(127 downto 96)
		);	
      
end architecture encrypt;


architecture decrypt of mixColumns is
	
begin
	mixColumns_0 : entity work.computeColumn(decrypt)
		port map(
			input_data  => input_data(31 downto 0),
			output_data => output_data(31 downto 0)
		);
	mixColumns_1 : entity work.computeColumn(decrypt)
		port map(
			input_data  => input_data(63 downto 32),
			output_data => output_data(63 downto 32)
		);		
	mixColumns_2 : entity work.computeColumn(decrypt)
		port map(
			input_data  => input_data(95 downto 64),
			output_data => output_data(95 downto 64)
		);
	mixColumns_3 : entity work.computeColumn(decrypt)
		port map(
			input_data  => input_data(127 downto 96),
			output_data => output_data(127 downto 96)
		);	
      
end architecture decrypt;

