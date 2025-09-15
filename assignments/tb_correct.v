module tb_correct;
reg clk;
reg a;
wire b,c;
correct dut (.clk(clk), .a(a), .b(b), .c(c));
initial clk = 0;
always #5 clk = ~clk;
initial begin
$monitor("time=%0t|a=%b|b=%b|c=%b",$time,a,b,c);
a=0; #5;
a=1; #5;
a=0; #5;
a=1; #5;
#10 $finish;
end
endmodule
