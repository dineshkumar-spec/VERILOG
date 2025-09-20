//Demonstrate $monitor to track signal changes in a clock and data signal.
module signal;
reg data;
reg clk;
initial begin
clk = 0;
#7 data = 1;
#10 data = 0;
end
always #5 clk = ~clk;
initial begin
$monitor("time=%0t|data=%b|clk=%b",$time,data,clk);
#50 $finish;
end
endmodule
