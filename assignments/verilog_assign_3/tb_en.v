module tb_en;
reg [3:0] d;
wire [1:0] y;
en dut(.d(d), .y(y));
initial begin
$monitor("time=%0t | d=%b | y=%b",$time,d,y);
d=4'b0001; #5;
d=4'b0010; #5;
d=4'b0100; #5;
d=4'b1000; #5;
$finish;
end
endmodule         
