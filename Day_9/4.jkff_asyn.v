module jkff_asyn(input clk,
input reset,
input j,
input k,
output reg q,
output  qbar);
assign qbar=~q;
always@(negedge clk or posedge reset)begin
        if(reset)begin
                q<=1'b0;
        end else begin
        case({j,k})
                2'b00:q<=q;
                2'b01:q<=1'b0;
                2'b10:q<=1'b1;
                2'b11:q<=qbar;
        endcase
end
end
endmodule
//tb
module tb_jkff_asyn;
reg clk,reset,j,k;
wire q;
wire qbar;

jkff_asyn dut (.clk(clk),.reset(reset),.j(j),.k(k),.q(q),.qbar(qbar));
initial begin
clk=0;
forever #5 clk = ~clk;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars(0,tb_jkff_asyn);
$monitor("time=%0t|clk=%b|reset=%b|j=%b|k=%b|q=%b|qbar=%b",$time,clk,reset,j,k,q,qbar);
reset=1;j=0;k=0;#5;
reset=0;j=0;k=1;#5;
j=1;k=0;#5;
j=1;k=0;#5;
j=1;k=1;#5;
j=1;k=1;#5;
reset=0;j=0;k=0;
$finish;
end
endmodule
