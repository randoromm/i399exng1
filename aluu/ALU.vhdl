library IEEE;
use IEEE.std_logic_1164.all;

entity Alu is 
	port ( A_IN, B_IN : in STD_LOGIC_VECTOR (3 downto 0);
		   CONT_SIG : in STD_LOGIC_VECTOR (1 downto 0);
		   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
		 );
end Alu;

architecture ArchAlu of Alu is
	component Function1 is
		port ( A_IN, B_IN : in STD_LOGIC_VECTOR (3 downto 0);
			   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
			 );
	end component;
	
	component Function2 is
		port ( A_IN : in STD_LOGIC_VECTOR (3 downto 0);
			   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
			 );
	end component;
	
	component Function3 is
		port ( A_IN, B_IN : in STD_LOGIC_VECTOR (3 downto 0);
			   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
			 );
	end component;
	
	component Function4 is
		port ( A_IN : in STD_LOGIC_VECTOR (3 downto 0);
			   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
			 );
	end component;
	
	component Mux4 is
		port ( FUNCT1_IN : in STD_LOGIC_VECTOR (3 downto 0);
			   CONT_SIG : in STD_LOGIC_VECTOR (1 downto 0);
			   OUT_SIG_BEH : out STD_LOGIC_VECTOR (3 downto 0);
			 );
	end component;
	
	signal S1, S2, S3, S4 : STD_LOGIC_VECTOR (3 downto 0);
	
	begin
		F1 : entity Function1 port map (A_IN, B_IN, S1);
		F2 : entity Function2 port map (A_IN, S2);
		F3 : entity Function3 port map (A_IN, B_IN, S3);
		F4 : entity Function4 port map (A_IN, S4);
		MUX4 : entity Mux4 port map (S1, S2, S3, S4, CONT_SIG, OUT_SIG_BEH);
end ArchAlu;
