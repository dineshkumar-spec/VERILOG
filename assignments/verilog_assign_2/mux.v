/*15.4:1 Multiplexer
Design using gates and simulate all s1, s0 combinations.*/
module mux(
input wire d0,d1,d2,d3,d4,
input wire s0,s1;
output wire y);
wire ns0,ns1;
and(s0,s1,d0);
and(s0,s1,d1);
and(s0,s1,d2);
and(s0,s1,d3);
or(y,w1,w2,w3);
endmodule

