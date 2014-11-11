library verilog;
use verilog.vl_types.all;
entity testing_top is
    port(
        clk             : in     vl_logic;
        pulse           : in     vl_logic;
        control         : in     vl_logic;
        cnt             : out    vl_logic_vector(3 downto 0);
        pulseFOut       : out    vl_logic;
        clearOut        : out    vl_logic;
        idleCnt         : out    vl_logic_vector(3 downto 0);
        captureCnt      : out    vl_logic_vector(3 downto 0);
        latchCnt        : out    vl_logic_vector(3 downto 0);
        clrCnt          : out    vl_logic_vector(3 downto 0)
    );
end testing_top;
