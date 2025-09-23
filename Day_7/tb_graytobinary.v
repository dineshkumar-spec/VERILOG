module tb_g2b;
reg [3:0]g;
wire [3:0]b;
g2b dut (.g(g), .b(b));
initial begin
$monitor("time=%0t|g=%b|b=%b",$time,g,b);
g=4'b0101;#5;
g=4'b1101;#5;
$finish;
end
endmodule
