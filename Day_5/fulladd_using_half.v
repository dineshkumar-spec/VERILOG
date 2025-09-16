module half(input a,b,output s,c);
assign s = a^b;
assign c = a&b;
endmodule

module full(input a,b,
input cin,
output s_out,
output c_out);
wire s,c0,c1;
half HA1(.a(a), .b(b), .s(s), .c(c0));
half HA2(.a(s), .b(cin), .s(s_out), .c(c1));
assign c_out=c0|c1;

endmodule
