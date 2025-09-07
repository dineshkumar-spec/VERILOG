module fulladd(
input a,b,cin,
output sum,cout);
xor(sum,a,b,cin);
and(w1,a,b);
and(w2,b,cin);
and(w3,a,cin);
or(cout,w1,w2,w3);
endmodule

