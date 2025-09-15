module squarewave;
reg clk;
initial begin
clk =0;
forever #5 clk = ~clk;
end
initial begin
$monitor("time=%0t|clk=%b",$time,clk);
#50 $finish;
end
endmodule
