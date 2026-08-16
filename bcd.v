module fa(a,b,cin,s,co);
	input a,b,cin;
	output reg s,co;
	always @(*) begin
	{co,s} = a+b+cin;
	end
endmodule

module rca(a,b,cin,s,co);
	input [3:0]a;
	input [3:0]b;
	input cin;
	output [3:0]s;
	output co;
 wire w1,w2,w3;
 fa fa1(a[0],b[0],cin,s[0],w1);
 fa fa2(a[1],b[1],w1,s[1],w2);
 fa fa3(a[2],b[2],w2,s[2],w3);
 fa fa4(a[3],b[3],w3,s[3],co);
endmodule
module bcd(a,b,cin,s,co);
	input [3:0]a;
	input [3:0]b;
	input cin;
	output [3:0]s;
	output co;
	wire [3:0]s1;
	wire co1;
	wire a1,a2,o1;
	wire [3:0]w2;
  rca r1(a,b,cin,s1,co1);

  and g1(a1,s1[3],s1[2]);
  and g2(a2,s1[3],s1[1]);
  or g3(o1,a1,a2);
  assign w2 = {1'b0,o1,o1,1'b0};

  rca r2(s1,w2,1'b0,s,co);
 endmodule

