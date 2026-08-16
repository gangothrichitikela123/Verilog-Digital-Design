module ha(a,b,s,c);
	input a,b;
	output reg s,c;
   always @(*) begin
   {c,s} = a+b;
   end
 endmodule

 module fa(a,b,cin,s,c);
 	input a,b,cin;
	output s,c;
    wire w1,w2,w3;
 ha ha1(.a(a),.b(b),.s(w1),.c(w3));
 ha ha2(.a(w1),.b(cin),.s(s),.c(w2));
 or (c,w2,w3);
 endmodule
