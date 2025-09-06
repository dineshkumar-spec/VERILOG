module full_sub(a,bin,c,diff,bor);
input a,bin,c;
output diff, bor;
assign diff = a^bin^c;
assign bor = (~a&bin)|(bin&c)|(~a&c);
endmodule
