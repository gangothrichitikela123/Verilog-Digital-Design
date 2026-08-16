`include "bcd.v"
module tb;
	reg [3:0]a;
	reg [3:0]b;
	reg cin;
	wire [3:0]s;
	wire co;
 bcd dut(a,b,cin,s,co);
 initial begin
 repeat (5) begin
 {a,b,cin} = $random;
 #100;
 $display("a=%b,b=%b,cin=%b,s=%b,co=%b",a,b,cin,s,co);
 end
 end
 endmodule
