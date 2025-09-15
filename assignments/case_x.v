module case_x(
input [1:0]s,
output reg y);
always@(*)begin
casex(s)
2'b0?:y=0;
2'b1?:y=1;
default:y=0;
endcase
end
endmodule
