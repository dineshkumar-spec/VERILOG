module not_gate(in,out);
input in;
output out;
pmos p1 (out,vdd,in);
nmos n1 (out,gnd,in);
endmodule 
