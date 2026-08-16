module mux41_behave(i0,i1,i2,i3,s0,s1,y);
	input i0,i1,i2,i3,s0,s1;
	output reg y;
  always @(*) begin
  if (s0==0 && s1==0) y = i0;
  else if (s0==0 && s1==1) y = i1;
  else if (s0==1 && s1==0) y = i2;
  else  y = i3;
 end 
endmodule
