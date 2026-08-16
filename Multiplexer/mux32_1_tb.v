`include "mux32_1.v"
module tb;
 reg [31:0]i;
 reg [4:0]s;
 wire y;
 mux32_1 dut(i,s,y);
 initial begin
 repeat (5) begin
 {i,s} = {$random,$random};
 #1;
 $display("i=%b,s=%b,y=%b",i,s,y);
 end
 end
 endmodule
