library verilog;
use verilog.vl_types.all;
entity testing_top_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        control         : in     vl_logic;
        pulse           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end testing_top_vlg_sample_tst;
