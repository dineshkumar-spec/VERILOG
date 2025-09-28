//right shift siso
module siso(
input si,
input clk,
input reset,
output wire so,
output reg [3:0]shift);

assign so=shift[0];
always@(posedge clk or posedge reset)begin
if(reset)
 shift <= 4'b0000;
else
 shift<={si,shift[3:1]};
end
endmodule
//tb
module tb_siso;
reg si;
reg clk;
reg reset;
wire so;
wire [3:0]shift;

siso dut (.si(si), .clk(clk), .reset(reset), .so(so), .shift(shift));

always #5 clk = ~clk;
initial begin
clk=0;
reset=1;
si=0;
#5;reset=0;
si=1;#5;
si=1;#5;
si=1;#5;
si=1;#5;
#20 $finish;
end
initial begin
$monitor("time=%0t|clk=%b|reset=%b|si=%b|so=%b|shift=%b",$time,clk,reset,si,so,shift);
end
endmodule
/*time=0|clk=0|reset=1|si=0|so=0|shift=0000
time=5|clk=1|reset=0|si=1|so=0|shift=1000
time=10|clk=0|reset=0|si=1|so=0|shift=1000
time=15|clk=1|reset=0|si=1|so=0|shift=1100
time=20|clk=0|reset=0|si=1|so=0|shift=1100
time=25|clk=1|reset=0|si=1|so=0|shift=1110
time=30|clk=0|reset=0|si=1|so=0|shift=1110
time=35|clk=1|reset=0|si=1|so=1|shift=1111
time=40|clk=0|reset=0|si=1|so=1|shift=1111
siso.v:37: $finish called at 45 (1s)
time=45|clk=1|reset=0|si=1|so=1|shift=1111*/
