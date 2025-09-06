module mux(s,d0,d1,y);
input s;
input d0,d1;
output y;
assign y = ((~s)&d0) | (s&d1);
endmodule
