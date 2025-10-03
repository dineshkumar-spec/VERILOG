module down(
input clk,rst,
output reg [3:0]count);
always@(posedge clk)begin
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
/*time=5|rst=0|count=0
time=15|rst=1|count=15
time=25|rst=1|count=14
time=35|rst=1|count=13
time=45|rst=1|count=12
time=55|rst=1|count=11
time=65|rst=1|count=10
time=75|rst=1|count=9
time=85|rst=1|count=8
time=95|rst=1|count=7
time=105|rst=1|count=6
time=115|rst=1|count=5
time=125|rst=1|count=4
time=135|rst=1|count=3
time=145|rst=1|count=2
time=155|rst=1|count=1
time=165|rst=1|count=0
time=175|rst=1|count=15
time=185|rst=1|count=14
time=195|rst=1|count=13
time=205|rst=1|count=12
time=215|rst=1|count=11
time=225|rst=1|count=10
time=235|rst=1|count=9
time=245|rst=1|count=8
time=255|rst=1|count=7*/
