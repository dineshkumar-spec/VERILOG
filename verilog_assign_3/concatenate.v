/*8. Create a module using concatenation operator:
assign y = {a, b[0], c[1]};*/
module concatenate(a,b,c,y);
input a;
input [1:0]b,c;
output [2:0] y;
assign y = {a, b[0], c[1]};
endmodule
