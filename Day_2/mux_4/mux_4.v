module mux_4(
input s0,s1,d0,d1,d2,d3,
output y);
assign y = (~s0&~s1&d0)|(~s0&s1&d1)|(s0&~s1&d2)|(s0&s1&d3);
endmodule
