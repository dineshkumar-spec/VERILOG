module dff_syn(input clk,
input reset,
input d,
output reg q);
always@(negedge clk)begin
        if(reset==0)
                q<=1'b0;
        else
               q<=d;
end
endmodule
//tb
module tb_dff_syn;
reg clk,reset,d;
wire q;

dff_syn dut (.clk(clk),.reset(reset),.d(d),.q(q));
initial begin
clk=0;
forever #5 clk = ~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb_dff_syn);
$monitor("time=%0t|clk=%b|reset=%b|d=%b|q=%b",$time,clk,reset,d,q);
reset=1;d=0;#5;
reset=0;d=0;#5;
d=1;#5;
d=1;#5;
d=0;#5;
d=1;#5;
reset=1;d=0;
$finish;
end
endmodule
