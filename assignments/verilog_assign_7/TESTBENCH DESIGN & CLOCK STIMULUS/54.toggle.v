module toggle;
reg clk;
initial clk = 0;
always #5 clk = ~clk;
initial begin
$dumpfile("toggle.vcd");
$dumpvars;
$monitor("time=%0t | clk=%b",$time,clk);
#50 $finish;
end
endmodule
