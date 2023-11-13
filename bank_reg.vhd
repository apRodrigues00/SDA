library IEEE;
library work;
use IEEE.std_logic_1164.all;
use work.my_pack.all;

entity bank_reg is
port(
	dataIn	: in std_logic_vector (31 downto 0);
	clear		: in std_logic;
	clock		: in std_logic;
	carga		: in std_logic_vector (31 downto 0);
	dataOut	: out matriz
	);
end entity;

architecture arc_bank_reg of bank_reg is

begin

	G1:	for i in 0 to 31 generate
				R1: reg_32bits port map(dataIn, clear, clock, carga(i), dataOut(i));
			end generate;
end architecture;