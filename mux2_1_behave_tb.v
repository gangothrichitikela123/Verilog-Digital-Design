`include "mux2_1_behave.v"
module tb;
	reg i0,i1,s;
	wire y;
  mux2_1_behave dut(i0,i1,s,y);
  initial begin
  repeat (5) begin
  {i0,i1,s} = $random;
  #10;
  $display("i0=%b,i1=%b,s=%b,y=%b",i0,i1,s,y);
  end
 end
endmodule

