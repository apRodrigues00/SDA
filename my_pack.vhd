library IEEE;
use IEEE.std_logic_1164.all;

package my_pack is

type matriz is array(0 to 31) of std_logic_vector(31 downto 0);

	component reg_32bits  is
		port(
			d			: in std_logic_vector (31 downto 0);
			clear		: in std_logic;
			clock		: in std_logic;
			carga		: in std_logic;
			s_out		: out std_logic_vector (31 downto 0)
			);
	end component;
	
	component somador_nbits IS
	 PORT (
			 c0   		: IN STD_LOGIC;
	       a,b  		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			 s    		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
          c4   		: OUT STD_LOGIC;
			 overflow	: OUT STD_LOGIC
			 );
	END component;
	
	component decoder is
		port(
			enable		:  in std_logic;
			sel			:	in std_logic_vector(4 downto 0);
			write_reg	:	out std_logic_vector(31 downto 0)
			);
	end component;
	
	component bank_reg is
		port(
			dataIn	: in std_logic_vector (31 downto 0);
			clear		: in std_logic;
			clock		: in std_logic;
			carga		: in std_logic_vector (31 downto 0);
			dataOut	: out matriz
			);
	end component;
	
	component mux_1 is
		port(
			input_mux		:	in matriz;
			sel 				:  in std_logic_vector(4 downto 0);
			s_mux				:	out std_logic_vector(31 downto 0)
			);
	end component;
	
	component ula is
		port
		(
			a, b									: in STD_LOGIC_VECTOR(31 downto 0);
			sel 									: in STD_LOGIC_VECTOR(2 downto 0);
			negative, zero, cout, overflow: out STD_LOGIC;
			s										: out STD_LOGIC_VECTOR(31 downto 0)
		);
	end component;
	
	component mux_2x1 is
		port ( 
			a 			: in std_logic_vector(31 downto 0);
			b 			: in std_logic_vector(31 downto 0);
			sel 		: in STD_LOGIC;
			dataOut 	: out std_logic_vector(31 downto 0)
		);
	end component;


end package;