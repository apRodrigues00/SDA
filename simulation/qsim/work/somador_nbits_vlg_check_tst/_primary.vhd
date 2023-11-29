library verilog;
use verilog.vl_types.all;
entity somador_nbits_vlg_check_tst is
    port(
        c4              : in     vl_logic;
        overflow        : in     vl_logic;
        s               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end somador_nbits_vlg_check_tst;
