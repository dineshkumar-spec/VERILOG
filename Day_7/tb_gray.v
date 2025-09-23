module tb_gray;
reg [3:0]d;
wire [3:0]g;
gray dut (.d(d), .g(g));
initial begin
$monitor("time=%0t|d=%b|g=%b",$time,d,g);
d=4'b1011;#5;
end
endmodule
