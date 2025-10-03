module updown(
input clk,rst,up_down,
output reg [3:0]count);
always@(posedge clk or negedge rst)begin
if(~rst)
count<=0;
else begin
if(up_down)
        count<=count+1;
else
        count<=count-1;
end
end
endmodule
//tb
module tb_updown;
reg clk,rst,up_down;
wire [3:0]count;

updown dut (.clk(clk), .rst(rst), .count(count), .up_down(up_down));
initial begin
clk=0;
forever #5 clk = ~clk;
end
initial begin
rst=0;
#10 up_down=1;
#10 rst=1;

#50 up_down=0;
#10 rst=1;

#250;$finish;
end

always@(rst or count)
$display("time=%0t|rst=%0h|count=%0d",$time,rst,count);
initial begin
$dumpfile("dump.vcd");
$dumpvars;
end
endmodule
