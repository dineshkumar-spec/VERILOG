module tff_asyn(input clk,
input reset,
input t,
output reg q);
assign qbar=~q;
initial q=1'b0;
always@(posedge clk or posedge reset)begin
        if(reset)
               q<=1'b0;
        else if(t)
               q<=~q;
        else
               q<=q;
end
endmodule
//tb
module tb_tff_asyn;
reg clk,reset,t;
wire q;

tff_asyn dut (.clk(clk),.reset(reset),.t(t),.q(q));
initial begin
clk=0;
forever #5 clk = ~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb_tff_asyn);
$monitor("time=%0t|clk=%b|reset=%b|t=%b|q=%b",$time,clk,reset,t,q);
reset=1;t=0;#5;
reset=0;t=0;#5;
t=1;#5;
t=1;#5;
t=0;#5;
t=1;#5;
reset=0;t=0;
t=1;reset =1;
$finish;
end
endmodule
