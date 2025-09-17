module tb_mux;
reg [7:0]d;
reg [2:0]s;
wire y;
mux dut (.d(d), .s(s), .y(y));
initial begin
$monitor("time=%0t|d=%b|s=%b|y=%b",$time,d,s,y);
d=8'b11001010;s=3'b000;#5;
s=3'b001;#5;
s=3'b010;#5;
s=3'b011;#5;
s=3'b100;#5;
s=3'b101;#5;
s=3'b110;#5;
s=3'b111;#5;
$finish;
end
endmodule
