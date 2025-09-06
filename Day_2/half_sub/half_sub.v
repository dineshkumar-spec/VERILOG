module half_sub(a,b,diff,bor);
input a,b;
output diff,bor;
assign diff = a^b;
assign bor = ~a&b;
endmodule
