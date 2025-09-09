/*14.Implement logical left and right shift on a 4-bit input vector using assign.*/
module shift(a,left,right);
input [3:0] a;
output [3:0]left;
output [3:0]right;
assign left =a << 1;
assign right = a >> 1;
endmodule 
