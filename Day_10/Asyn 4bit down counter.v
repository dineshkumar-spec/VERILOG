module down(
input clk,rst,
output reg [3:0]count);
  always@(posedge clk or negedge rst)begin
if(~rst)
count<=0;
else
count<=count-1;
end
endmodule
//tb
module tb_down;
reg clk,rst;
wire [3:0]count;

down dut (.clk(clk), .rst(rst), .count(count));
initial begin
clk=0;
forever #5 clk = ~clk;
end
initial begin
rst=0;
#10 rst=1;
#250;$finish;
end

always@(count)
$display("time=%0t|rst=%0h|count=%0d",$time,rst,count);
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule
