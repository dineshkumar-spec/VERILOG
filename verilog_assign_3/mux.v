//15.Write a 2-to-1 MUX using conditional operator ?:
module mux (d0,d1,s,y);
input d0,d1,s;
output y;
assign y = s?d1:d0;
endmodule
