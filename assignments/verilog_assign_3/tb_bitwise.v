module tb_bitwise;
reg x,y;
wire r1,r2,r3,r4,r5;
bitwise dut (
.x(x),
.y(y),
.r1(r1),
.r2(r2),
.r3(r3),
.r4(r4),
.r5(r5));
initial begin
$dumpfile("bitwise.vcd");
$dumpvars(0,tb_bitwise);
$monitor("time=%0t|x=%b, y=%b,not r1=%b,and r2=%b,or r3=%b,xor r4=%b, xorbar r5=%b",$time,x,y,r1,r2,r3,r4,r5);
x=0; y=0; #5;
x=0; y=1; #5;
x=1; y=0; #5;
x=1; y=1; #5;
$finish;
end
endmodule
