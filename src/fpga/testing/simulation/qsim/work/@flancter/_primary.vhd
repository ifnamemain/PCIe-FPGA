library verilog;
use verilog.vl_types.all;
entity Flancter is
    port(
        sysclk          : in     vl_logic;
        pulse           : in     vl_logic;
        clr             : in     vl_logic;
        enable          : in     vl_logic;
        flag            : out    vl_logic;
        testOut         : out    vl_logic
    );
end Flancter;
