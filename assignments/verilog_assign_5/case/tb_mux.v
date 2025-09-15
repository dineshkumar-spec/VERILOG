module tb_mux;
reg[3:0]d;
reg [1:0]s;
wire y;
mux dut (.d(d), .s(s), .y(y));
initial begin
$monitor("time=%0t|d=%b|s=%b|y=%b",$time,d,s,y);
d=4'b0101; s=2'b00; #5;
s=2'b01; #5;
s=2'b10; #5;
s=2'b11; #5;
$finish;
end
endmodule
