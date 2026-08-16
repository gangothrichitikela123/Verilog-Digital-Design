module mux4_1(s,i,y);
	input [1:0]s;
	input [3:0]i;
	output reg y;
  always @(*) begin
  y = i[s];
  end
 endmodule

module top(s,i,y);
	input [2:0]s;
	input [7:0]i;
	output y;
  wire w1,w2;
mux4_1 m1(s[1:0],i[3:0],w1);
mux4_1 m2(s[1:0],i[7:4],w2);
mux4_1 m3(s[2:1],{w2,w2,w1,w1},y);
endmodule
