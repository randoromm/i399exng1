library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.Numeric_STD.all;

entity Function3 is
	port ( A_IN, B_IN : in STD_LOGIC_VECTOR (3 downto 0);
		   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
		 );
end Function3;

architecture F3 of Function3 is 
	begin
		F3 : process(A_IN, B_IN)
		begin
			 case B_IN is
			 	when "0000" | "0100" | "1000" | "1100" => 
			 		OUT_SIG_BEH <= A_IN;
			 		OUT_SIG_BEH(0) <= '1';
			 	when "0001" | "0101" | "1001" | "1101" => 
			 		OUT_SIG_BEH <= A_IN;
			 		OUT_SIG_BEH(1) <= '1'; 
			 	when "0010" | "0110" | "1010" | "1110" => 
			 		OUT_SIG_BEH <= A_IN;
			 		OUT_SIG_BEH(2) <= '1'; 
			 	when "0011" | "0111" | "1011" | "1111" => 
			 		OUT_SIG_BEH <= A_IN;
			 		OUT_SIG_BEH(3) <= '1'; 	 
			 	when OTHERS => 
			 		OUT_SIG_BEH <= "XXXX";
			 end case;
		end process F3;
end F3;