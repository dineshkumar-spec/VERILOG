module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum;
output cout;
wire w1,w2,w3;
xor (sum,a,b,cin);
and(w1,a,b);
and(w2,b,cin);
and(w3,a,cin);
or(cout,w1,w2,w3);
endmodule
//ripplei carry adder
module ripple(a,b,cin,sum,cout);
input [3:0]a;
input [3:0]b;
input	cin;
output [3:0]sum; 
output cout;
wire c1,c2,c3;
full_adder fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
full_adder fa1 (.a(a[1]), .b(b[1]), .cin(c1),  .sum(sum[1]), .cout(c2));
full_adder fa2 (.a(a[2]), .b(b[2]), .cin(c2),  .sum(sum[2]), .cout(c3));
full_adder fa3 (.a(a[3]), .b(b[3]), .cin(c3),  .sum(sum[3]), .cout(cout));
endmodule


