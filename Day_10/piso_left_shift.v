module piso(input [3:0]pi,input clk,reset,load,output reg so);
reg [3:0]shift;
always@(posedge clk)begin
if(reset)
shift<=4'b0000;
else if(load)
shift<=pi;
else
        shift<={shift[2:0],1'b0};
        so=shift[3];
end
endmodule

module tb;
reg [3:0]pi;
reg clk;
reg reset;
reg load;
wire so;
piso dut (pi,clk,reset,load,so);

initial clk=0;
always #5 clk = ~clk;

initial begin
$dumpfile("count.vcd");
$dumpvars;
$monitor("time=%0t|clk=%b|reset=%b|pi=%b|so=%b",$time,clk,reset,pi,so);
reset=1;pi=4'b0000;load=0;#10;
reset=0;
pi=4'b1100;load=1;
#10;load=0;
#40;
$finish;
end
endmodule
