/*Implement a 4-bit two’s complement adder using the expression:
assign t = y ^ {4{c_in}}; assign {c_out, sum} = x + t + c_in;*/
module two_comp_add(x,y,t,c_in,sum,c_out);
input [3:0]x;
input [3:0]y;
input c_in;
output [3:0]t;
output [3:0] sum;
output c_out;
assign t = y ^ {4{c_in}}; 
assign {c_out, sum} = x + t + c_in;
endmodule
