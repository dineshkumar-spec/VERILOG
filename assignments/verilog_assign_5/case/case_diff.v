module case_diff(
input in1,
input in2,
input s,
output reg y_case,
output reg y_casex,
output reg y_casez);
always@(*)begin
case(s)
1'b0 : y_case = in1;
1'b1 : y_case = in2;
default : y_case = 1'b1; 
endcase

casex(s)
1'b0 : y_casex = in1;
1'b1 : y_casex = in2;
default : y_casex = 1'b1;                                                                                                            endcase

casez(s)                                                                                                                           
1'b0 : y_casez = in1;
1'b1 : y_casez = in2;                                                                                                                default : y_casez = 1'b1;                                                                                                            endcase
end
endmodule   
