module nonblock;
reg a,b;
reg clk;

initial clk=0;
always #5 clk = ~clk;

initial begin
a=0;b=1;	
$monitor("time=%0t|a=%b|b=%b",$time,a,b);
#30 $finish;
end

always@(posedge clk)begin
a <= b;
b <= a;
end
endmodule
