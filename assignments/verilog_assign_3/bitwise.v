/*4. Implement the following bitwise operations in a module and display the result:
• ~x, x & y, x | y, x ^ y, x ^~ y*/
module bitwise(x,y,r1,r2,r3,r4,r5);
input x;
input y;
output r1;
output r2;
output r3;
output r4;
output r5;
assign r1 = ~(x);
assign r2 = x & y;
assign r3 = x | y;
assign r4 = x ^ y;
assign r5 = (x ^ (~y));
endmodule
