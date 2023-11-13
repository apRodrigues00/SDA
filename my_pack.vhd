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

end package;