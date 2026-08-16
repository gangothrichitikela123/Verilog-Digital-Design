module dec2_4(a,d);
	input [1:0]a;
	output reg [3:0]d;
 always @(*) begin
  d=4'b0;
  d[a] = 1'b1;
  end
 endmodule
