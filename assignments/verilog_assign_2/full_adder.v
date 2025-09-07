/*14.1-Bit Full Adder Using Gates
Write structural code using xor, and, or gates for a full adder.*/
module full_adder(
input a,b,cin,
output sum,carry);
wire w1,w2,w3;
//sum
xor g1(sum,a,b,cin);
//carry
and g2(w1,a,b);
and g3(w2,b,cin);
and g4(w3,a,cin);
or g5(carry,w2,w3,w1);
endmodule

