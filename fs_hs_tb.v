`include "fs_hs.v"
module tb;
	reg a,b,bin;
	wire d,bo;
 fs dut(a,b,bin,d,bo);
 initial begin
 repeat (5) begin
 {a,b,bin} = $random;
 #100;
 $display("a=%b,b=%b,bin=%b,d=%b,bo=%b",a,b,bin,d,bo);
 end 
 end
 endmodule
