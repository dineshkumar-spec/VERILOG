module case_mux(
input d,
input [1:0]s,
output reg y);
always@(*)begin
casex (s)
2'b0x:y=0; // both 01 and 00
2'b1x:y=1; // both 11 and 10
default:y=1'bx;
endcase
end
endmodule
  
