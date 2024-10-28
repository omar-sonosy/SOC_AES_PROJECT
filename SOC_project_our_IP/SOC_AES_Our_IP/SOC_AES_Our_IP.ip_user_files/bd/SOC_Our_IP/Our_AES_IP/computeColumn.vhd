library ieee;
use ieee.std_logic_1164.all;

entity computeColumn is
	port (
		input_data  : in  std_logic_vector(31 downto 0);
		output_data : out std_logic_vector(31 downto 0)
	);
end computeColumn;

architecture bhv of computeColumn is

	function mul_by_2(n : std_logic_vector(7 downto 0)) return std_logic_vector is
		begin
			if n(7) = '1' then
				return (n(6 downto 0) & '0') xor x"1B";
			else
				return n(6 downto 0) & '0';
			end if;
	end mul_by_2;

	function mul_by_3(n : std_logic_vector(7 downto 0)) return std_logic_vector is
		begin
			return mul_by_2(n) xor n;
	end mul_by_3;

	signal s0, s1, s2, s3 : std_logic_vector(7 downto 0);

begin
	s0 <= input_data(31 downto 24);
	s1 <= input_data(23 downto 16);
	s2 <= input_data(15 downto  8);
	s3 <= input_data( 7 downto  0);

	output_data(31 downto 24) <= mul_by_2(s0) xor mul_by_3(s1) xor s2 xor s3;
	output_data(23 downto 16) <= s0 xor mul_by_2(s1) xor mul_by_3(s2) xor s3;
	output_data(15 downto  8) <= s0 xor s1 xor mul_by_2(s2) xor mul_by_3(s3);
	output_data( 7 downto  0) <= mul_by_3(s0) xor s1 xor s2 xor mul_by_2(s3);
	
end architecture bhv;
