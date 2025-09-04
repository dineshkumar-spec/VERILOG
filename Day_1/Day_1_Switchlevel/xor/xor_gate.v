module xor_gate (input a, input b, output y);
wire w1,w2,w3,w4,w5;
supply1 vdd;
supply0 gnd;
//inverter a and b
pmos p1 (w2, vdd, a);
nmos n1 (w2, gnd, a);
pmos p2 (w3, vdd, b);
nmos n2 (w3, gnd, b);
//pmos
pmos p3 (w1, vdd, a);
pmos p4 (w1, vdd, b);
pmos p5 (y, w1, w2);
pmos p6 (y, w1, w3);
//nmos
nmos n3 (y, w4, a);
nmos n4 (y, w5, w2);
nmos n5 (w4, gnd, b);
nmos n6 (w5, gnd, w3);
endmodule

