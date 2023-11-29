library IEEE;
library work;
use IEEE.STD_LOGIC_1164.all;
use work.my_pack.all;

entity datapath is
	port
	(
		data_in 			: in  std_logic_vector(31 downto 0);
		sel_mux			: in  std_logic; 		
		clock 			: in  std_logic;
		clear 			: in  std_logic;
		enable			: in 	std_logic;
		read_Reg1 		: in  std_logic_vector(4 downto 0);
		read_Reg2 		: in  std_logic_vector(4 downto 0);
		write_Reg 		: in  std_logic_vector(4 downto 0);
		ula_funct 		: in  std_logic_vector(2 downto 0);
		data_out 		: out std_logic_vector(31 downto 0);
		cout,ov,N,Z 	: out std_logic
	);
end entity;

architecture arc_datapath of datapath is

	 signal carga_reg_select	: std_logic_vector(31 downto 0);
	 signal out_bank_reg 		: matriz;
	 signal out_mux_1				: std_logic_vector(31 downto 0);
	 signal out_mux_2				: std_logic_vector(31 downto 0);
	 signal out_ula				: std_logic_vector(31 downto 0);
	 signal out_mux_write		: std_logic_vector(31 downto 0); --valor a armazenar
	 
begin 
	 DEC	: decoder 	port map (enable, write_Reg, carga_reg_select);
	 CRG	: bank_reg 	port map (out_mux_write, clear, clock, carga_reg_select, out_bank_reg); 
	 MUX_A: mux_1 		port map (out_bank_reg, read_Reg1, out_mux_1);
	 MUX_B: mux_1 		port map (out_bank_reg, read_Reg2, out_mux_2);
	 ULA_S: ula			port map (out_mux_1, out_mux_2, ula_funct, N, Z, cout, ov, out_ula);
	 MUX_C: mux_2x1   port map (data_in, out_ula, sel_mux, out_mux_write);
	 Data_out <= out_mux_1;
end architecture;
