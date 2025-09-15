module counter;
reg [2:0] count;
reg clk;

initial clk = 0;
always #5 clk = ~clk;

initial begin 
count=0;
$display("time\tclk\tcount");

repeat (8) begin
@(posedge clk)
count = count + 1;
$display("time=%0t|clk=%b|counter=%b",$time,clk,count);
end
$finish;
end
endmodule
