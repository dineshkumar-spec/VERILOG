module full_adder(
input a,b,cin,
output sum,cout);

assign sum = a^b^cin;
assign cout = (a&b)|(b&cin)|(a&cin);
endmodule

module ripple_carry(
input [3:0] a,b,
input       cin,
output [3:0] sum,
output      cout);
wire [4:0] carry; //internal carry wire
assign carry[0] = cin; //first carry input cin

genvar i;
generate
 for(i=0;i<4;i=i+1)begin
 full_adder fa(
    .a(a[i]),
    .b(b[i]),
    .cin(carry[i]),
    .sum(sum[i]),
    .cout(carry[i+1]));
 end
endgenerate
assign cout = carry[4]; //final carry out
endmodule
