library IEEE;
use IEEE.std_logic_1164.all;

entity Function2 is
	port ( A_IN : in STD_LOGIC_VECTOR (3 downto 0);
		   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
		 );
end Function2;

architecture F2 of Function2 is 
	begin
		F2 : process(A_IN)
		begin
			OUT_SIG_BEH(0) <= A_IN(1);
			OUT_SIG_BEH(1) <= A_IN(2);
			OUT_SIG_BEH(2) <= A_IN(3);
			OUT_SIG_BEH(3) <= '0';
		end process F2;
end F2;