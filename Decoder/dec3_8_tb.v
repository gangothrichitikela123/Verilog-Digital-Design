`include "dec3_8.v"
module tb;
	reg [2:0]a;
	wire [7:0]d;
	dec3_8 dut(a,d);
	initial begin
	repeat (5) begin
	a = $random;
	#100;
	$display("a=%b,d=%b",a,d);
	end
	end
	endmodule
