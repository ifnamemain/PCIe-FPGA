library verilog;
use verilog.vl_types.all;
entity testing_top_vlg_check_tst is
    port(
        captureCnt      : in     vl_logic_vector(3 downto 0);
        clearOut        : in     vl_logic;
        clrCnt          : in     vl_logic_vector(3 downto 0);
        cnt             : in     vl_logic_vector(3 downto 0);
        idleCnt         : in     vl_logic_vector(3 downto 0);
        latchCnt        : in     vl_logic_vector(3 downto 0);
        pulseFOut       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end testing_top_vlg_check_tst;
