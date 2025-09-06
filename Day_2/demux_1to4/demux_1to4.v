module demux_1to4(
input wire din,
input wire s0,s1,
output wire y0,y1,y2,y3);
assign y0=din&(~s0)&(~s1);
assign y1= din&(~s0)&(s1);
assign y2=din&(s0)&(~s1);
assign y3=din&(s0)&(s1);
endmodule

