//Implement $strobe to display values at the end of simulation timestep.
//prints last time event
module signal;
reg data;
reg clk;
initial begin
clk = 0;data = 1;
data = 0;
data = 1;
end
always #5 clk = ~clk;
initial begin
$strobe("time=%0t|data=%b|clk=%b",$time,data,clk);
#50 $finish;
end
endmodule
