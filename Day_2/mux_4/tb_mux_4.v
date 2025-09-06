module tb_mux_4;
reg s0,s1,d0,d1,d2,d3;
wire y;
mux_4 dut(
.s0(s0),
.s1(s1),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.y(y));
initial begin
$dumpfile("mux_4.vcd");
$dumpvars(0,tb_mux_4);
$monitor("time=%0t, s0=%b, s1=%b, d0=%b, d1=%b, d2=%b, d3=%b output =%b",$time,s0,s1,d0,d1,d2,d3,y);
s0=0; s1=0; d0=1; d1=0; d2=0; d3=0; #5;
s0=0; s1=1; d0=0; d1=1; d2=0; d3=0; #5;
s0=1; s1=0; d0=0; d1=1; d2=1; d3=0; #5;
s0=1; s1=1; d0=0; d1=0; d2=0; d3=1; #5;
$finish;
end
endmodule
