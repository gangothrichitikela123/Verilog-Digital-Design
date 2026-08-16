module excess3(bcd,exc);
	input [3:0]bcd;
	output reg [3:0]exc;
	always @(*) begin
	exc = bcd+4'b0011;
   end
  endmodule
