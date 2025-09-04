module norgate(a,b,y);
 input a,b;
 output y;
 wire c;
supply1 vdd;
supply0 gnd;
pmos p1 (c,vdd,b);
pmos p2 (y,c,a);
nmos n1 (y,gnd,a);
nmos n2 (y,gnd,b);
endmodule

