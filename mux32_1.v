module mux32_1(
	input [31:0]i,[4:0]s,
	output reg y);
	always @(*) begin
   y = i[s];
   end
  endmodule
