//12.Create a comparator module that uses ==, <, and > to output ceq, clt, and cgt.
module comp(a,b,ceq, clt, cgt);
input [3:0]a,b;
output ceq, clt, cgt;
assign clt = (a<b);
assign ceq = (a==b);
assign cgt = (a>b);
endmodule
