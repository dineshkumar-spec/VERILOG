module ff_exchange;
reg a,b;
reg clk;

initial clk =0;
always #5 clk = ~clk;

initial begin
a=1;b=0;
$monitor("time=%0t|clk=%b|a=%b|b=%b",$time,clk,a,b);
#50 $finish;
end

always@(posedge clk)begin
a <= b;
b <= a;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars;
end
endmodule
