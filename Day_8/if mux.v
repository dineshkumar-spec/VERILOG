module mux
(input in1,
input in2,
input s,
output reg y);
always@(*)begin
if(s)
y=in1;
else
y=in2;
end
endmodule

module tb_mux;
reg in1,in2;
reg s;
wire y;
mux uut (.in1(in1), .in2(in2), .s(s), .y(y));
initial begin
$monitor("time=%0t|in1=%b|in2=%b|s=%b|y=%b",$time,in1,in2,s,y);
in1=1;in2=0;s=0;#5;
 s=1;
end
endmodule
