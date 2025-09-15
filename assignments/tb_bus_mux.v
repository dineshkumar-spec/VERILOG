module tb_bux_mux;
reg [7:0]a,b;
reg s;
wire[7:0]y;

bus_mux#(8) dut (.a(a), .b(b), .s(s), .y(y));

initial begin
$monitor("time=%0t|s=%b|a=%b|b=%b|y=%b",$time,s,a,b,y);
a=8'b10101010; b=8'b01010101;s=0;#5;
s=1; #5;
a=8'b11110000; b=8'b00001111; s=0; #5;
s=1; #5;
$finish;
end
endmodule
