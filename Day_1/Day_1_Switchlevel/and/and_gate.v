module and_gate(
input a,
input b,
output x);
wire w,y;
supply1 vdd;
supply0 gnd;
pmos p1 (y, vdd, a);
pmos p2 (y, vdd, b);
nmos n1 (y, w, a);
nmos n2 (w, gnd, b);
pmos p3 (x, vdd, y);
nmos n3 (x, gnd, y);
endmodule

