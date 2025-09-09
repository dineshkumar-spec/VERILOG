module tb_mux4to1;
reg d0,d1,d2,d3;
reg [1:0]s;
wire y;
mux4to1 dut (.d0(d0), .d1(d1), .d2(d2), .d3(d3), .s(s), .y(y));
initial begin
$monitor("time=%0t|d0=%b|d1=%b|d2=%b|d3=%b|s=%b |y=%b",$time,d0,d1,d2,d3,s,y);
d0=1; d1=0; d2=1; d3=0;
s=2'b00; #5;
s=2'b01; #5;
s=2'b10; #5;
s=2'b11; #5;
$finish;
end
endmodule 
