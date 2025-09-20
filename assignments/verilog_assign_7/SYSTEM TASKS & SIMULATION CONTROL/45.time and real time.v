module time_real;
reg data;
reg clk;
initial begin
clk = 0;
end
initial begin
#7 data = 1;
#10 data = 0;
end
always #5 clk = ~clk;
initial begin
$monitor("time=%0t|realtime=%0f|data=%b|clk=%b",$time,$realtime,data,clk);
#50 $finish;
end
endmodule
