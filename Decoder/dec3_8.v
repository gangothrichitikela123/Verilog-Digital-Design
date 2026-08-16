module dec3_8(a,d);
	input [2:0]a;
	output reg [7:0]d;
   always @(*) begin
   d = 8'b0;
   d[a]=1'b1;
   end
endmodule
