module tb_sum;
reg a,b;
wire sum;
sum dut (.a(a), .b(b), .sum(sum));
initial begin
$dumpfile("sum.vcd");
$dumpvars(0,tb_sum);
$monitor("time=%5t | a=%b | b=%b | sum=%b",$time,a,b,sum);
a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
$finish;
end
endmodule
