`include "mux8_1_using_mux4_1.v"
module tb;
	reg [2:0]s;
	reg [7:0]i;
	wire y;
  top dut(s,i,y);
  initial begin
  repeat (5) begin
  {s,i} = $random;
  #100;
  $display("s=%b,i=%b,y=%b",s,i,y);
  end
  end
  endmodule
