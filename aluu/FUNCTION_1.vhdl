library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity Function1 is
	port ( A_IN, B_IN : in STD_LOGIC_VECTOR (3 downto 0);
		   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
		 );
end Function1;

architecture F1 of Function1 is 
	begin
		F1 : process(A_IN, B_IN)
		begin
			OUT_SIG_BEH <= unsigned(A_IN) + unsigned(B_IN);
		end process F1;
end F1;