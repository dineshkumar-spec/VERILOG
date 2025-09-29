module pipo(
input [3:0]pi,
input clk,rst,
output reg [3:0]po);
always@(posedge clk or posedge rst)begin
        if(rst)begin
                po<=4'b0000;end
                else begin
po<=pi;
end
end
endmodule
//tb
module tb_pipo;
reg [3:0]pi;
reg clk;
reg rst;
wire [3:0]po;
pipo dut (.pi(pi), .clk(clk), .rst(rst), .po(po));
initial begin
clk=1;
$dumpfile("wave.vcd");
$dumpvars;
forever #5 clk=~clk;
end
initial begin
rst=1;
pi=4'b1111;#5;
rst=0;
pi=4'b1011;#5;
pi=4'b1010;#5;
rst=1;pi=4'b0011;
$finish;
end
initial begin
$monitor("time=%0t|clk=%b|reset=%b|pi=%b|po=%b",$time,clk,rst,pi,po);
end
endmodule
/*time=0|clk=1|reset=1|pi=1111|po=0000
time=5|clk=0|reset=0|pi=1011|po=0000
time=10|clk=1|reset=0|pi=1010|po=1010
pipo.v:34: $finish called at 15 (1s)
time=15|clk=0|reset=1|pi=0011|po=0000*/
