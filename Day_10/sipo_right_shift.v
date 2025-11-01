module sipo(input in,clk,reset,output reg [3:0]out);
always@(posedge clk or posedge reset)begin
if(reset)
out<=4'b0000;
else
      out<={in,out[3:1]};
end
endmodule
//tb
module tb_shift;
reg in;
reg clk;
reg reset;
wire [3:0]out;

sipo dut (in,clk,reset,out);

initial begin
        clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("sioo.vcd");
$dumpvars;
$monitor("time=%0t|clk=%b|reset=%b|input=%b|out=%b",$time,clk,reset,in,out);
reset=1;in=1;#10;
reset=0;
 in=1;#10;
 in=0;#10;
 in=1;#10;
 in=1;#10;

#20 $finish;
end
endmodule
