`timescale 1ns/1ps

module tb_timer_434us (
	output wire clk, reset,
	input wire rollover
);

reg CLOCK_50, RST;

assign clk = CLOCK_50;
assign reset = RST;

initial begin
	CLOCK_50 = 1'b1;
	RST = 1'b1;
end

always begin
	#10 CLOCK_50 = ~CLOCK_50;
end

initial begin
	#10 RST = 1'b0;
end

timer_434us DUT (.clk(clk), .reset(reset), .rollover(rollover));

endmodule 