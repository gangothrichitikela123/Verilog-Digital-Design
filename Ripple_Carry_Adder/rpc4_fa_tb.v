`include "rpc4_fa.v"
module tb;
	reg [3:0]a;
	reg [3:0]b;
	reg cin;
	wire [3:0]s;
	wire c;
  top dut(a,b,cin,s,c);
  initial begin
  repeat (5) begin
  {a,b,cin} = $random;
  #100;
  $display("a=%b,b=%b,cin=%b,s=%b,c=%b",a,b,cin,s,c);
  end
  end
  endmodule
