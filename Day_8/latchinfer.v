//decoder with latch inference
module latchinfer(input[1:0]d, output reg[3:0]y);
always@(*)begin
if(d==2'b00)
y=4'b0001;
else if(d==2'b01)
y=4'b0010;
else if(d==2'b10)
y=4'b0100;
end
endmodule

module tb_latchinfer;
reg [1:0]d;
wire [3:0]y;
latchinfer dut (.d(d), .y(y));
initial begin
$monitor("time=%0t|d=%b|y=%b",$time,d,y);
d=2'b01;#5;
d=2'b11;#5;
end
endmodule
//actual output
/*time=0|d=01|y=0010
time=5|d=11|y=1000*/

/*latch inference output
time=0|d=01|y=0010
time=5|d=11|y=0010*/
