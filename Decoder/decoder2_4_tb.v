`include "decoder2_4.v"
module tb;
	reg a,b;
	wire [3:0]d;
  decoder2_4 dut(a,b,d);
  initial begin
  repeat (5) begin
  {a,b} = $random;
  #100;
  $display("a=%b,b=%b,d=%b",a,b,d);
  end
  end
  endmodule
