module fa(a,b,cin,s,c);
	input a,b,cin;
	output s,c;
	assign s=a^b^cin;
	assign c=(a&b)|(b&cin)|(a&cin);
endmodule

module top(a,b,cin,s,c);
	input [3:0]a;
	input [3:0]b;
	input cin;
	output [3:0]s;
	output c;
 wire w1,w2,w3;
 fa fa1(a[0],b[0],cin,s[0],w1);
 fa fa2(a[1],b[1],w1,s[1],w2);
 fa fa3(a[2],b[2],w2,s[2],w3);
 fa fa4(a[3],b[3],w3,s[3],c);
 endmodule

