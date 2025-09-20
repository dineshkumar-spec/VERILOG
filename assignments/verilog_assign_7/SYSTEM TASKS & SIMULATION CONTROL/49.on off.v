
//Show usage of $monitoron and $monitoroff to control monitoring.
module on_off;
reg data;
reg clk;
initial begin
clk = 0;
#1 data = 1;
end
always #5 clk = ~clk;
initial begin
$monitor("time=%0t|data=%b|clk=%b",$time,data,clk);
#3 $monitoroff;
#4 $monitoron;
#50 $finish;
end
endmodule
