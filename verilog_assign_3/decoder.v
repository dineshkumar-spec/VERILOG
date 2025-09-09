//17.Design a 2-to-4 decoder using dataflow modeling (active-low output).
module decoder(a0,a1,y0,y1,y2,y3);
input a0,a1;
output y0,y1,y2,y3;
assign y0 = ~(~a1 & ~a0);
assign y1 = ~(a1 & ~a0);
assign y2 = ~(~a1 & a0);
assign y3 = ~(a1 & a0);
endmodule
