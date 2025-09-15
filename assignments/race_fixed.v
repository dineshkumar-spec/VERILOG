module race_fixed;
reg clk,d;

initial clk =1;
always #2 clk = ~clk;

initial begin
d=0;
$monitor("time=%0t|clk=%b|d=%b",$time,clk,d);
#50 $finish;
end

always@(posedge clk)d <= 1;
always@(negedge clk)d <= 0;
endmodule

