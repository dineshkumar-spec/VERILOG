/*Write a module using replication operator:
assign y = {a, {4{b[0]}}, c[1]};*/
module replicate(a,b,c,y);
input [3:0] a,b,c;
output [8:0]y;
assign y = {a, {4{b[0]}}, c[1]};
endmodule
