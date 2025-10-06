module john(
input clk,rst,
output reg [3:0]q);
always@(posedge clk)begin
if(rst)
q<=4'b0000;
else
        q<={~q[0],q[3:1]};
end
endmodule
//tb
module tb_john;
reg clk;
reg rst;
wire [3:0]q;

john dut (.clk, .rst, .q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;#10;
rst=0;
#100 $finish;
end
initial begin
$dumpfile("dump.vcd");
$dumpvars;
$monitor("time=%0t|clk=%b|reset=%b|q=%b",$time,clk,rst,q);
end
endmodule
/*time=0|clk=0|reset=1|q=xxxx
time=5|clk=1|reset=1|q=0000
time=10|clk=0|reset=0|q=0000
time=15|clk=1|reset=0|q=1000
time=20|clk=0|reset=0|q=1000
time=25|clk=1|reset=0|q=1100
time=30|clk=0|reset=0|q=1100
time=35|clk=1|reset=0|q=1110
time=40|clk=0|reset=0|q=1110
time=45|clk=1|reset=0|q=1111
time=50|clk=0|reset=0|q=1111
time=55|clk=1|reset=0|q=0111
time=60|clk=0|reset=0|q=0111
time=65|clk=1|reset=0|q=0011
time=70|clk=0|reset=0|q=0011
time=75|clk=1|reset=0|q=0001
time=80|clk=0|reset=0|q=0001
time=85|clk=1|reset=0|q=0000
time=90|clk=0|reset=0|q=0000
time=95|clk=1|reset=0|q=1000
time=100|clk=0|reset=0|q=1000
time=105|clk=1|reset=0|q=1100
john.v:25: $finish called at 110 (1s)
time=110|clk=0|reset=0|q=1100*/
