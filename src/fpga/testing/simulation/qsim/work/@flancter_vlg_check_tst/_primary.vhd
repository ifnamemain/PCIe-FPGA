library verilog;
use verilog.vl_types.all;
entity Flancter_vlg_check_tst is
    port(
        flag            : in     vl_logic;
        testOut         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Flancter_vlg_check_tst;
