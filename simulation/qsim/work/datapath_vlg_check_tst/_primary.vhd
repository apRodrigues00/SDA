library verilog;
use verilog.vl_types.all;
entity datapath_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        data_out        : in     vl_logic_vector(31 downto 0);
        N               : in     vl_logic;
        ov              : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end datapath_vlg_check_tst;
