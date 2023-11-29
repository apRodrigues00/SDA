library verilog;
use verilog.vl_types.all;
entity datapath_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        enable          : in     vl_logic;
        read_Reg1       : in     vl_logic_vector(4 downto 0);
        read_Reg2       : in     vl_logic_vector(4 downto 0);
        sel_mux         : in     vl_logic;
        ula_funct       : in     vl_logic_vector(2 downto 0);
        write_Reg       : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end datapath_vlg_sample_tst;
