/*11.Write a module to detect all-zero and all-one using:
assign zero = ~(|x); assign one = &x;*/
module detect(x,zero,one);
input [7:0] x;
output [7:0]zero;
output [7:0]one;
assign zero = ~(|x); 
assign one = &x;
endmodule
