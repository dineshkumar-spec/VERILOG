primitive d_latch(qn,d,en,q);
output qn;
reg qn;
input d,en,q;
table
//d en q : qn
  0 0 : 0 : 0;
  0 0 : 1 : 1;
  0 1 : 0 : 0;
  0 1 : 1 : 0;
  1 0 : 0 : 0;
  1 0 : 1 : 1;
  1 1 : 0 : 1;
  1 1 : 1 : 1;

endtable
endprimitive

