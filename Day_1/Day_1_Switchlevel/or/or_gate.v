module or_gate(a,b,x);
input a,b;
output x;
wire c,y;
supply1 vdd;
supply0 gnd;
pmos p1 (c,vdd,b);
pmos p2 (y,c,a);
nmos n1 (y, gnd,a);
nmos n2 (y, gnd,b);
pmos p3 (x,vdd,y);
nmos n3 (x,gnd,y);
endmodule
