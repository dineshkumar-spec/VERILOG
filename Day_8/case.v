//Write a 4-to-1 multiplexer using case.
module muxcase(input [3:0]d,input [1:0]s,output reg y);
always@(*)begin
case(s)
2'b00:y=d[0];
2'b01:y=d[1];
2'b10:y=d[2];
2'b11:y=d[3];
default:y=d[0];
endcase
end
endmodule

//tb
module tb_muxcase;
reg [3:0]d;
reg [1:0]s;
wire y;
muxcase dut (.d(d), .s(s), .y(y));
initial begin
$monitor("time=%0t|d=%b|s=%b|y=%b",$time,d,s,y);
d=1010;s=2'b00;#5;
s=2'b01;#5;
s=2'b10;#5;
s=2'b11;#5;
$finish;
end
endmodule
