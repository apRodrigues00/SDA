LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_nbits IS
    GENERIC ( N	: INTEGER := 32);
	 PORT (c0   			 : IN STD_LOGIC;
	       a,b  			 : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
			 s   				 : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0);
          c4    			 : OUT STD_LOGIC;
			 overflow		 : OUT STD_LOGIC
			 );
END somador_nbits;

ARCHITECTURE comportamento OF somador_nbits IS
component somador IS
	PORT (cin, a, b : IN STD_LOGIC;
          s, cout : OUT STD_LOGIC
	);
END component;

signal cin_temp: std_logic_vector(N downto 0);

BEGIN

G1:  FOR i IN 0 TO N-1 GENERATE
		SCs: somador PORT MAP (
			cin_temp(i), a(i), b(i) xor cin_temp(i), s(i), cin_temp(i+1)
		);
	  END GENERATE;

	cin_temp(0) <= c0;
	c4 <= cin_temp(N);
	overflow <= cin_temp(N-1) xor cin_temp(N);

END comportamento;	