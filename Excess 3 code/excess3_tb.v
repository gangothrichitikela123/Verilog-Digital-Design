`include "excess3.v"
module tb;
	reg [3:0]bcd;
	wire [3:0]exc;
	excess3 dut(bcd,exc);
 initial begin
 repeat (5) begin
 bcd = $random;
 #100;
 $display("bcd=%b,exc=%b",bcd,exc);
 end
 end
endmodule
