//comparision of three numbers using conditional operator
module compare(
input [3:0] a,
input[3:0] b,
input[3:0] c,
output [3:0]result);
assign result = (a>b)?((a>c)?a:c):((b>c)?b:c);

endmodule
