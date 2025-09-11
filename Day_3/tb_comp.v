module tb_comp;
reg a0,b0,a1,b1;
wire x,y,z;
comp dut(
.a0(a0),
.a1(a1),
.b0(b0),
.b1(b1),
.x(x),
.y(y),
.z(z));
initial begin
$dumpfile("comp.vcd");
$dumpvars(0,tb_comp);
$monitor("time=%0t|a0=%b|a1=%b|b0=%b|b1=%b|A<B x=%b|A==B y=%b|A>B z=%b",$time,a0,a1,b0,b1,x,y,z);
a0=0; a1=0; b0=1; b1=1; #5;
a0=1; a1=0; b0=1; b1=0; #5;
$finish;
end
endmodule
