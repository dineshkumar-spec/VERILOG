module raceblock;
reg a,clk;

initial clk=0;
always #5 clk = ~clk;

always@(posedge clk)a=0;
always@(posedge clk)a=1;

initial begin
a=0;
$monitor("time=%0t|clk=%b|a=%b",$time,clk,a);
#50 $finish;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars;
end
endmodule
