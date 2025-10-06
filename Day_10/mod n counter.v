module mod#(
parameter N=15,
parameter WIDTH=4)
(input clk,rst,
output reg [WIDTH-1:0]count);
always@(posedge clk)begin
if(~rst)
count<=0;
else if(count == N-1)
count<=0;
else
count <= count+1;
end
endmodule
//tb
module tb_mod;
reg clk;
reg rst;
wire [3:0]count;

mod dut (.clk, .rst, .count(count));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=0;#10;
rst=1;
#200 $finish;
end
initial begin
$dumpfile("dump.vcd");
$dumpvars;
$monitor("time=%0t|clk=%b|reset=%b|count=%b",$time,clk,rst,count);
end
endmodule
