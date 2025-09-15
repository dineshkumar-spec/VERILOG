module clk_gen;
reg clk;
initial begin
clk =0;
forever #7 clk = ~clk;
end
initial begin
$monitor("time=%0t|clk=%b",$time,clk);
#70 $finish;
end
endmodule
