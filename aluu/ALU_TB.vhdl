library IEEE;
use IEEE.std_logic_1164.all;
--library MUX44 ,FUNCTION_1, FUNCTION_2, FUNCTION_3, FUNCTION_4;

entity ALU_TB is
end ALU_TB;

architecture TestBench of ALU_TB is
	component Alu is
		Port ( A_IN, B_IN : in STD_LOGIC_VECTOR (3 downto 0);
			   CONT_SIG : in STD_LOGIC_VECTOR (1 downto 0);
			   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
			 );
	end component;
	
	signal A_IN_TB : STD_LOGIC_VECTOR(3 downto 0);
	signal B_IN_TB : STD_LOGIC_VECTOR(3 downto 0);
	signal CONT_TB : STD_LOGIC_VECTOR(1 downto 0);
	signal BEH_TB : STD_LOGIC_VECTOR(3 downto 0);
	signal OUTPUT : STD_LOGIC_VECTOR(3 downto 0);
	
	begin
	Alu: Alu port map (
		A_IN => A_IN_TB,
		B_IN => B_IN_TB,
		CONT_SIG => CONT_TB,
		OUT_SIG_BEH => BEH_TB
	);
	
Stimulus: process
	begin
	
	report "Test case 1";
	CONT_TB <= "00";
	
	A_IN_TB <= "0000";
	B_IN_TB <= "0000";
	OUTPUT <= "0000"; 
	wait for 10 ns;
	
	A_IN_TB <= "0100";
	B_IN_TB <= "0010";
	OUTPUT <= "0110";
	wait for 10 ns;
	
	A_IN_TB <= "1000";
	B_IN_TB <= "0100";
	OUTPUT <= "1100";
	wait for 10 ns;
	
	A_IN_TB <= "1000";
	B_IN_TB <= "0001";
	OUTPUT <= "1001";
	wait for 10 ns;
	

	report "Test case 2";
	B_IN_TB <= "0000";
	CONT_TB <= "01";
	
	A_IN_TB <= "0000";
	OUTPUT <= "0000";
	wait for 10 ns;
	
	A_IN_TB <= "0100";
	OUTPUT <= "0010";
	wait for 10 ns;
	
	A_IN_TB <= "1110";
	OUTPUT <= "0111";
	wait for 10 ns;
	
	A_IN_TB <= "1011";
	OUTPUT <= "0101";
	wait for 10 ns;
	
	report "Test case 3";
	CONT_TB <= "10";
	
	B_IN_TB <= "1001";
	A_IN_TB <= "1100";
	OUTPUT <= "1110";
	wait for 10 ns;
	
	B_IN_TB <= "0111";
	A_IN_TB <= "0001";
	OUTPUT <= "1001";
	wait for 10 ns;
	
	B_IN_TB <= "1000";
	A_IN_TB <= "0111";
	OUTPUT <= "0111";
	wait for 10 ns;
	
	B_IN_TB <= "1010";
	A_IN_TB <= "1011";
	OUTPUT <= "1111";
	wait for 10 ns;
	
	report "Test case 4";
	B_IN_TB <= "0000";
	CONT_TB <= "11";
	
	A_IN_TB <= "0001";
	OUTPUT <= "0001";
	wait for 10 ns;
	
	A_IN_TB <= "1011";
	OUTPUT <= "0000";
	wait for 10 ns;
	
	A_IN_TB <= "0100";
	OUTPUT <= "0001";
	wait for 10 ns;
	
	A_IN_TB <= "1010";
	OUTPUT <= "0000";
	wait for 10 ns;
	
	
	wait;
end process;

end TestBench;