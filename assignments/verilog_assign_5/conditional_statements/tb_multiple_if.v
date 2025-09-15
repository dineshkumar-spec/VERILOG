module tb_multiple_if;
reg a,b,x,y;
wire out1,out2;
multiple_if dut (
	.a(a), 
	.b(b), 
	.x(x), 
	.y(y), 
	.out1(out1), 
	.out2(out2));
initial begin
$monitor("time=%0t|a=%b|b=%b|x=%b|y=%b|out1=%b|out2=%b",$time,a,b,x,y,out1,out2);
a=1; b=1; x=1; y=1; #5;
a=0; b=1; x=0; y=1; #5;
$finish;
end
endmodule
