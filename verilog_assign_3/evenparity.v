/*10.Implement a 9-bit even parity generator using ^x and ~:
assign ep = ^x; assign op = ~ep;*/
module evenparity(x,ep,op);
input [8:0] x;
output ep;
output op;
assign ep = ^x; //odd parity xor
assign op = ~ep;// even parity xnor
endmodule
