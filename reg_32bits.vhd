library IEEE;
use IEEE.std_logic_1164.all;

entity reg_32bits is
port(
	d			: in std_logic_vector (31 downto 0);
	clear		: in std_logic;
	clock		: in std_logic;
	carga		: in std_logic;
	s_out		: out std_logic_vector (31 downto 0)
	);
end entity;

architecture arc_reg_32bits of reg_32bits is

begin
	process(clock, clear, carga)
	begin
		if clear = '1'	then 
			s_out <= (others => '0');
		elsif clock'event and clock = '1' then
			if carga = '1' then
				s_out <= d;
			end if;
		end if;
	end process;
end architecture;