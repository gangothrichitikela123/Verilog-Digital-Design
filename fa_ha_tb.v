`include "fa_ha.v"
module tb;
	reg a,b,cin;
	wire s,c;
    fa dut(a,b,cin,s,c);
	initial begin
	repeat (5) begin
	{a,b,cin} = $random;
	#100;
	$display("a=%b,b=%b,c=%b,s=%b,c=%b",a,b,cin,s,c);
	end
	end
	endmodule

