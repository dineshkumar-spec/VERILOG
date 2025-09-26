module srff_asyn(input clk,
input reset,
input s,
input r,
output reg q,
output qbar);
assign qbar=~q;
always@(posedge clk or posedge reset)begin
        if(reset)begin
                q<=1'b0;
        end else begin
        case({s,r})
                2'b00:q<=q;
                2'b01:q<=1'b0;
                2'b10:q<=1'b1;
                2'b11:q<=1'bx;
        endcase
end
end
endmodule
//tb
module tb_srff_syn;
reg clk,reset,s,r;
wire q;
wire qbar;

srff_asyn dut (.clk(clk),.reset(reset),.s(s),.r(r),.q(q),.qbar(qbar));
initial begin
clk=0;
forever #5 clk = ~clk;
end
initial begin
$monitor("time=%0t|clk=%b|reset=%b|s=%b|r=%b|q=%b|qbar=%b",$time,clk,reset,s,r,q,qbar);
reset=1;s=0;r=0;#5;
reset=0;s=0;r=1;#5;
s=1;r=0;#5;
s=1;r=0;#5;
s=1;r=1;#5;
reset=1;s=1;r=1;#5;
reset=0;s=0;r=0;
$finish;
end
endmodule
/*time=0|clk=0|reset=1|s=0|r=0|q=0|qbar=1
time=5|clk=1|reset=0|s=0|r=1|q=0|qbar=1
time=10|clk=0|reset=0|s=1|r=0|q=0|qbar=1
time=15|clk=1|reset=0|s=1|r=0|q=1|qbar=0
time=20|clk=0|reset=0|s=1|r=1|q=1|qbar=0
time=25|clk=1|reset=1|s=1|r=1|q=0|qbar=1*/
