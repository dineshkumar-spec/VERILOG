/*Demonstrate integer division and modulus behavior in Verilog with signed/unsigned
variables.*/
module int_div(u1,u2,s1,s2,u_div,u_mod,s_div,s_mod);
input [7:0] u1,u2;
input signed[7:0] s1,s2;
output  [7:0] u_div,u_mod;
output  [7:0] s_div, s_mod;

//unsigned
assign u_div = u1 / u2;
assign u_mod = u1 % u2;

//signed
assign s_div = s1 / s2;
assign s_mod = s1 % s2;
endmodule
