/*16.Tristate 2:1 MUX
Use bufif0 and bufif1 to design and test.*/
module tri_mux(i0,i1,s,y);
input i0,i1,s;
output y;
bufif0 (y,i0,s);
bufif1 (y,i1,s);
endmodule
