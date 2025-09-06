module gates(
input a,b,
output [3:0]y);
assign y[0]=~(a&b); //nand
assign y[1]=~(a|b); //nor
assign y[2]=a^b; //xor
assign y[3]=~(a^b); // xnor
endmodule
