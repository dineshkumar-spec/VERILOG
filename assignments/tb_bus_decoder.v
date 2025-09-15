module tb_bus_decoder;
reg [2:0]a;
wire [7:0]d;
bus_decoder dut (.a(a), .d(d));
initial begin
$monitor("time=%0t|a=%b|d=%b",$time,a,d);
a=3'b000; #5;
a=3'b001; #5;
a=3'b010; #5;
a=3'b011; #5;
a=3'b100; #5;
a=3'b101; #5;
a=3'b110; #5;
a=3'b111; #5;

a=3'b1x0; #5
a=3'bzz0; #5;
$finish;
end
endmodule
