module mux2_1_behave(i0,i1,s,y);
	input i0,i1,s;
	output reg y;
 always @(*) begin
 if (s==0) y=i0;
  else y=i1;
 end
endmodule
