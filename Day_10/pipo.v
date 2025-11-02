module pipo(input [3:0]pi,input clk,reset,output reg [3:0]po);
always@(posedge clk)begin
if(reset)
po<=4'b000;
else
po<=pi;
end
endmodule

module tb;
reg [3:0] pi;
reg clk;
reg reset;
wire [3:0]po;
pipo dut (pi,clk,reset,po);
initial begin
clk=0;
forever #5 clk= ~clk;
end
initial begin
$dumpfile("pipo.vcd");
$dumpvars;
$monitor("time=%0t|clk=%b|reset=%b|pi=%b|po=%b",$time,clk,reset,pi,po);
reset=1;#10;
reset=0;
pi=4'b1010;#10;
reset=1;
pi=4'b1111;
#100;
$finish;
end
endmodule
