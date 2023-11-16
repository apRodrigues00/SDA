library IEEE;
library work;
use IEEE.std_logic_1164.all;
use work.my_pack.all;

entity mux_1 is
port(
	input_mux		:	in matriz;
	sel 				:  in std_logic_vector(4 downto 0);
	s_mux				:	out std_logic_vector(31 downto 0)
	);
end entity;

architecture arc_mux_1 of mux_1 is

begin
	with sel select
		s_mux <= 	input_mux(0)  when	"00000",
						input_mux(1)  when   "00001",
						input_mux(2)  when	"00000",
						input_mux(3)  when	"00000",
						input_mux(4)  when	"00000",
						input_mux(5)  when	"00000",
						input_mux(6)  when	"00000",
						input_mux(7)  when	"00000",
						input_mux(8)  when	"00000",
						input_mux(9)  when	"00000",
						input_mux(10) when	"00000",
						input_mux(11) when	"00000",
						input_mux(12) when	"00000",
						input_mux(13) when	"00000",
						input_mux(14) when	"00000",
						input_mux(15) when	"00000",
						input_mux(16) when	"00000",
						input_mux(17) when	"00000",
						input_mux(18) when	"00000",
						input_mux(19) when	"00000",
						input_mux(20) when	"00000",
						input_mux(21) when	"00000",
						input_mux(22) when	"00000",
						input_mux(23) when	"00000",
						input_mux(24) when	"00000",
						input_mux(25) when	"00000",
						input_mux(26) when	"00000",
						input_mux(27) when	"00000",
						input_mux(28) when	"00000",
						input_mux(29) when	"00000",
						input_mux(30) when	"00000",
						input_mux(31) when	"00000";
end architecture;