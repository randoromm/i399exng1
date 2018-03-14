library IEEE;
use IEEE.std_logic_1164.all;
--http://insights.sigasi.com/tech/to-downto-ranges-vhdl.html

entity Function4 is
	port ( A_IN : in STD_LOGIC_VECTOR (3 downto 0);
		   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
		 );
end Function4;

architecture F4 of Function4 is 
	begin
		F4 : process(A_IN)
		type my_array is array (4 downto 0) of STD_LOGIC_VECTOR(3 downto 0);
		variable arrValues : my_array := ("0001", "0011", "0100", "1000", "1001");
		begin
			if A_IN <= arrValues(0) then
				OUT_SIG_BEH <= "0001";
			elsif A_IN <= arrValues(1) then
				OUT_SIG_BEH <= "0001";
			elsif A_IN <= arrValues(2) then
				OUT_SIG_BEH <= "0001";
			elsif A_IN <= arrValues(3) then
				OUT_SIG_BEH <= "0001";
			elsif A_IN <= arrValues(4) then
				OUT_SIG_BEH <= "0001";
			else
				OUT_SIG_BEH <= "0000";
			end if;
		end process F4;
end F4;