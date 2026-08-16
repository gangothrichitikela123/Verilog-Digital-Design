module hs(a,b,d,bo);
	input a,b;
	output reg d,bo;
	always @(*) begin
	{bo,d} = a-b;
	end
endmodule

module fs(a,b,bin,d,bo);
	input a,b,bin;
	output d,bo;
	wire w1,w2,w3;
 hs hs1(.a(a),.b(b),.d(w1),.bo(w3));
 hs hs2(.a(w1),.b(bin),.d(d),.bo(w2));
 or (bo,w2,w3);
 endmodule
	
