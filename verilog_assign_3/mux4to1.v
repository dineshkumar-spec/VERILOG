//16.Design a 4-to-1 MUX using nested conditional operators ?:
module mux4to1(d0,d1,d2,d3,s,y);
input d0,d1,d2,d3;
input [1:0]s;
output y;
assign y = (s == 2'b00) ? d0:
	   (s == 2'b01) ? d1:
	   (s == 2'b10) ? d2:
	                  d3;
endmodule
