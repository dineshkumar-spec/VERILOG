module piso(
input [3:0]pi,
input clk,
input load,
input rst,
output reg so);
reg [3:0]temp;
always@(posedge clk)begin
        if(rst)begin
        temp<=4'b000;
        so<=1'b0;
        end
        else if(~load)begin
                temp <= pi;end
                else begin
 so<=temp[3];
 temp<=temp<<1;end
end
endmodule
//tb
module tb_piso;
reg [3:0]pi;
reg clk;
reg load;
reg rst;
wire so;

piso dut (.pi(pi), .clk(clk), .rst(rst), .load(load), .so(so));
initial begin
clk=1;
$dumpfile("wave.vcd");
$dumpvars;
        forever #5 clk = ~clk;
end
initial begin
rst=1;load=1;pi=4'b1010;#10;
rst=0;
//first pattern
load=0;pi=4'b1010;#10;
load=1;#40;
//second pattern
load=0;pi=4'b1101;#10;
load=1;#40;
$finish;
end
initial begin
$monitor("time=%0t|clk=%b|load=%b|reset=%b|pi=%b|so=%b",$time,clk,load,rst,pi,so);
end
endmodule
/*time=0|clk=1|load=1|reset=1|pi=1010|so=0
time=5|clk=0|load=1|reset=1|pi=1010|so=0
time=10|clk=1|load=0|reset=0|pi=1010|so=0
time=15|clk=0|load=0|reset=0|pi=1010|so=0
time=20|clk=1|load=1|reset=0|pi=1010|so=1
time=25|clk=0|load=1|reset=0|pi=1010|so=1
time=30|clk=1|load=1|reset=0|pi=1010|so=0
time=35|clk=0|load=1|reset=0|pi=1010|so=0
time=40|clk=1|load=1|reset=0|pi=1010|so=1
time=45|clk=0|load=1|reset=0|pi=1010|so=1
time=50|clk=1|load=1|reset=0|pi=1010|so=0
time=55|clk=0|load=1|reset=0|pi=1010|so=0
time=60|clk=1|load=0|reset=0|pi=1101|so=0
time=65|clk=0|load=0|reset=0|pi=1101|so=0
time=70|clk=1|load=1|reset=0|pi=1101|so=1
time=75|clk=0|load=1|reset=0|pi=1101|so=1
time=80|clk=1|load=1|reset=0|pi=1101|so=1
time=85|clk=0|load=1|reset=0|pi=1101|so=1
time=90|clk=1|load=1|reset=0|pi=1101|so=0
time=95|clk=0|load=1|reset=0|pi=1101|so=0
time=100|clk=1|load=1|reset=0|pi=1101|so=1
time=105|clk=0|load=1|reset=0|pi=1101|so=1
piso.v:44: $finish called at 110 (1s)
time=110|clk=1|load=1|reset=0|pi=1101|so=0*/
