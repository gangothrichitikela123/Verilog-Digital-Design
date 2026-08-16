`include "dec2_4.v"
module tb;
	reg [1:0]a;
	wire [3:0]d;
	dec2_4 dut(a,d);
	initial begin
	repeat (5) begin
	a = $random;
	#100;
	$display("a=%b,d=%b",a,d);
	end
	end
 endmodule
