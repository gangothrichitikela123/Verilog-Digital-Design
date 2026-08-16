module decoder2_4(a,b,d);
	input a;
	input b;
	output reg [3:0]d;
	always @(*) begin
	if (~a && ~b) d=4'b0001;
	 else if (~a && b) d=4'b0010;
	 else  if (a && ~b) d=4'b0100;
	else d=4'b1000;
	end
	endmodule
