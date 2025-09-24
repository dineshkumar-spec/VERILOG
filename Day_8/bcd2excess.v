//bcd to excess
module bcd_exce
(input[3:0]b,
output reg [3:0]e);
always @ (*)begin
if(b<=9)
e=b+4'b0011;
else
e=4'bxxxx;
end
endmodule

module tb_excess;
reg [3:0]b;
wire [3:0]e;

bcd_exce dut (.b(b), .e(e));
initial begin
$monitor("time=%0t|b=%b|e=%b",$time,b,e);
b=4'b0011;#5;
b=4'b0101;#5;
end
endmodule
