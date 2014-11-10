library verilog;
use verilog.vl_types.all;
entity Flancter_vlg_sample_tst is
    port(
        clr             : in     vl_logic;
        enable          : in     vl_logic;
        pulse           : in     vl_logic;
        sysclk          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Flancter_vlg_sample_tst;
