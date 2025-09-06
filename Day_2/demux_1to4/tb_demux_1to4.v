module tb_demux_1to4;
reg din,s0,s1;
wire y0,y1,y2,y3;
demux_1to4 dut (
.s0(s0),
.s1(s1),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3));
initial begin
din=0;
s0=0;
s1=0;
#1;
$dumpfile("demux_1to4.vcd");
$dumpvars(0,tb_demux_1to4);
$monitor("time=%0t | din=%b|s0=%b|s1=%b|y0=%b|y1=%b|y2=%b|y3=%b",$time,din,s0,s1,y0,y1,y2,y3);
din=1; s0=0; s1=0; #5;
din=1; s0=0; s1=1; #5;
din=1; s0=1; s1=0; #5;
din=1; s0=1; s1=1; #5;
din=0; s0=0; s1=0; #5;
$finish;
end
endmodule
