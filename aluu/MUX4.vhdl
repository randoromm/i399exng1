library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4 is
	port ( FUNCT1_IN, FUNCT2_IN, FUNCT3_IN, FUNCT4_IN : in STD_LOGIC_VECTOR (3 downto 0);
		   CONT_SIG : in STD_LOGIC_VECTOR (1 downto 0);
		   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
		 );
end Mux4;

architecture ArchMux of Mux4 is 
begin
	Arch: process(FUNCT1_IN, FUNCT2_IN, FUNCT3_IN, FUNCT4_IN, CONT_SIG)
		begin
			if CONT_SIG = "00" then
				OUT_SIG_BEH <= FUNCT1_IN;
			elsif CONT_SIG = "01" then
				OUT_SIG_BEH <= FUNCT2_IN;
			elsif CONT_SIG = "10" then
				OUT_SIG_BEH <= FUNCT3_IN;
			elsif CONT_SIG = "11" then
				OUT_SIG_BEH <= FUNCT4_IN;
			else 
				OUT_SIG_BEH <= "XXXX";
			end if;
	end process Arch;
end ArchMux;
	
	