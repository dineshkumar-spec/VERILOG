module siso(input in,clk,reset,output out);
reg [3:0]shift;
always@(posedge clk or posedge reset)begin
if(reset)
shift<=4'b0000;
else
shift<={shift[2:0],in};
end
assign out = shift[3];
endmodule
//tb
module tb_shift;
reg in;
reg clk;
reg reset;
wire out;

siso dut (in,clk,reset,out);

initial begin
        clk=0;
forever #5 clk = ~clk;
end

initial begin
$dumpfile("siso.vcd");
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
