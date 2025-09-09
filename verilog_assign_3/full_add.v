/*5. Create a 4-bit full adder using only assign statement:
assign {c_out, sum} = a + b + c_in;*/
module full_add(a,b,c_in,sum,c_out);
input  [3:0]a;
input [3:0]b;
input c_in;
output [3:0]sum;
output c_out;
assign {c_out, sum} = a + b + c_in;
endmodule
