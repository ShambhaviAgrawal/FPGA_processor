`timescale 1ns / 1ps

module clock_div(
input clock,
output slow_clock);

reg [31:0] counter = 0;

always @(posedge clock)
begin
    counter = counter + 1;
end

assign slow_clock = counter[27];
endmodule
