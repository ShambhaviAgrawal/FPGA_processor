`timescale 1ns / 1ps

module processor_tb();
reg clock, enable;
wire cb, clk;
wire [7:0] accum;

processor sm_processor(clock, enable, cb, accum);

initial
begin
    clock = 0;
    forever #5 clock = ~clock;
end

initial
begin
    enable = 0;
    #19;
    enable = 1;
    #106;
    $finish();
end

endmodule