library ieee;
use ieee.std_logic_1164.all;

entity computeColumn is
	port (
		input_data  : in  std_logic_vector(31 downto 0);
		output_data : out std_logic_vector(31 downto 0)
	);
end computeColumn;

architecture encrypt of computeColumn is

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
	
end architecture encrypt;




architecture decrypt of computeColumn is
	-- The functions you already defined for multiplication by 2 and 3
	function mul_by_2(n : std_logic_vector(7 downto 0)) return std_logic_vector is
	begin
		if n(7) = '1' then
			return (n(6 downto 0) & '0') xor x"1B";
		else
			return n(6 downto 0) & '0';
		end if;
	end mul_by_2;
	-- Functions to multiply by 9, 11, 13, and 14 in GF(2^8)
	function mul_by_9(n : std_logic_vector(7 downto 0)) return std_logic_vector is
	begin
		return mul_by_2(mul_by_2(mul_by_2(n))) xor n; -- (n * 2^3) + n
	end mul_by_9;

	function mul_by_11(n : std_logic_vector(7 downto 0)) return std_logic_vector is
	begin
		return mul_by_2(mul_by_2(mul_by_2(n)) xor n) xor n; -- (n * 2^3 + n) * 2 + n
	end mul_by_11;

	function mul_by_13(n : std_logic_vector(7 downto 0)) return std_logic_vector is
	begin
		return mul_by_2(mul_by_2(mul_by_2(n) xor n)) xor n; -- (n * 2^2 + n) * 2^2 + n
	end mul_by_13;

	function mul_by_14(n : std_logic_vector(7 downto 0)) return std_logic_vector is
	begin
		return mul_by_2(mul_by_2(mul_by_2(n) xor n) xor n); -- ((n * 2 + n) * 2 + n) * 2
	end mul_by_14;

	signal s0, s1, s2, s3 : std_logic_vector(7 downto 0);

begin
	-- Split input data into individual bytes
	s0 <= input_data(31 downto 24);
	s1 <= input_data(23 downto 16);
	s2 <= input_data(15 downto  8);
	s3 <= input_data( 7 downto  0);

	-- Apply Inverse MixColumns transformation
	output_data(31 downto 24) <= mul_by_14(s0) xor mul_by_11(s1) xor mul_by_13(s2) xor mul_by_9(s3);
	output_data(23 downto 16) <= mul_by_9(s0) xor mul_by_14(s1) xor mul_by_11(s2) xor mul_by_13(s3);
	output_data(15 downto  8) <= mul_by_13(s0) xor mul_by_9(s1) xor mul_by_14(s2) xor mul_by_11(s3);
	output_data( 7 downto  0) <= mul_by_11(s0) xor mul_by_13(s1) xor mul_by_9(s2) xor mul_by_14(s3);

end architecture decrypt;
