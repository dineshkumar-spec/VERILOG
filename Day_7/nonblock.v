module eg;
reg a,b,c,d,e;
reg clk;
initial clk=0;
always #5 clk = ~clk;
always@(posedge clk) begin
a<=1;
b<=a;
c<=b;
d<=1;
e<=d;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars;
$monitor("time=%0t|a=%b|b=%b|c=%b|d=%b|e=%b|clk=%b",$time,a,b,c,d,e,clk);
#70;$finish;
end
endmodule
