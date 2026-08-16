`include "mux41_behave.v"
module tb;
	reg i0,i1,i2,i3,s0,s1;
	wire y;
  mux41_behave dut(i0,i1,i2,i3,s0,s1,y);
  initial begin
  repeat (5) begin
  {i0,i1,i2,i3,s0,s1} = $random;
  #10;
  $display("i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b,y=%b",i0,i1,i2,i3,s0,s1,y);
  end
  end
endmodule
  
