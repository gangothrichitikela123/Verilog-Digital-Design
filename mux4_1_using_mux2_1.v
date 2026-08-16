module mux2_1(s,i,y);
	input s;
	input [1:0]i;
	output reg y;
	always @(*) begin
	y = i[s];
	end
endmodule

module top(s,i,y);
	input [1:0]s;
	input [3:0]i;
	output y;
	wire w1,w2;
 mux2_1 m1(s[0],i[1:0],w1);
 mux2_1 m2(s[0],i[3:2],w2);
 mux2_1 m3(s[1],{w2,w1},y);
endmodule






 	

