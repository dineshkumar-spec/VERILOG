module init_vs_always;
reg [3:0]i;
reg clk;
initial begin
 i = 0;
 clk = 0;
$display("time=%0t|i=%d",$time,i);
end

always #5 clk=~clk;

always @(posedge clk)begin
 i = i + 1;
$monitor("time=%0t|always executed,i=%d",$time,i);
end

initial begin
#30 $finish;
end
endmodule
