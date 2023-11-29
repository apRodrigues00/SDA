library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        data_in         : in     vl_logic_vector(31 downto 0);
        sel_mux         : in     vl_logic;
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        enable          : in     vl_logic;
        read_Reg1       : in     vl_logic_vector(4 downto 0);
        read_Reg2       : in     vl_logic_vector(4 downto 0);
        write_Reg       : in     vl_logic_vector(4 downto 0);
        ula_funct       : in     vl_logic_vector(2 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0);
        cout            : out    vl_logic;
        ov              : out    vl_logic;
        N               : out    vl_logic;
        Z               : out    vl_logic
    );
end datapath;
