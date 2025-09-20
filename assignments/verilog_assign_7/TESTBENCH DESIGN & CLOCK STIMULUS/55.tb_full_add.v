module tb_full_add;
reg [3:0]a,b;
reg c_in;
wire [3:0]sum;
wire c_out;
full_add dut (.a(a), .b(b), .c_in(c_in), .sum(sum), .c_out(c_out));
initial begin
$dumpfile("full_add.vcd");
$dumpvars(0,tb_full_add);
$monitor("time=%0t| a=%b|b=%b|c_in=%b|sum=%b|c_out=%b",$time,a,b,c_in,sum,c_out);
a=4'b1100; b=4'b1010; c_in=0; #5;
a=4'b1110; b=4'b0000; c_in=1; #5;
$finish;
end
endmodule
