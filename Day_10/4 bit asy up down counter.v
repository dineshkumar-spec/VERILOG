module updown(input clk,reset,enable,output reg [3:0]q);
always@(negedge clk or posedge reset)begin
if(reset)
q<=4'b0000;
else if (enable)
q<=q+1;
else
q<=q-1;
end
endmodule

module tb;
reg clk;
reg reset;
reg enable;
wire [3:0]q;
updown dut (.clk(clk),.reset(reset),.enable(enable),.q(q));

initial clk=0;
always #5 clk=~clk;

initial begin
$dumpfile("count.vcd");
$dumpvars;
$monitor("time=%0t|clk=%b|reset=%b|enable=%b|q=%b",$time,clk,reset,enable,q);
reset=1;#10;
reset=0;
enable=1;#200;
enable=0;#200;
 $finish;
end
endmodule
