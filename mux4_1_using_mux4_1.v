module mux4_1(s,i,y);
	input [1:0]s;
	input [3:0]i;
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
  mux4_1 m1({1'b0,s[0]},{2'b00,i[1:0]},w1);
  mux4_1 m2({1'b0,s[0]},{2'b00,i[3:2]},w2);
  mux4_1 m3({1'b0,s[1]},{2'b00,w2,w1},y);
 endmodule
