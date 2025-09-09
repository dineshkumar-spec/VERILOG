/*13.Demonstrate the difference between == and === using operands with unknown bits (x,
z).*/
module diff(a,b,eq,ca);
input [3:0]a,b;
output eq,ca;
assign eq= a==b;
assign ca= a===b;
endmodule

