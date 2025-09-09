//assign t = y ^ {4{c_in}}; assign {c_out, sum} = x + t + c_in;
module tb_two_comp_add;
reg [3:0]x,y;
reg c_in;
wire [3:0]sum;
wire c_out;
two_comp_add dut (.x(x), .y(y), .c_in(c_in), .sum(sum), .c_out(c_out));
initial begin
$dumpfile("two_comp_add.vcd");
$dumpvars(0,tb_two_comp_add);
$monitor("time=%0t| x=%b|y=%b|c_in=%b|sum=%b|c_out=%b",$time,x,y,c_in,sum,c_out);
x=4'b1100; y=4'b1010; c_in=0; #5;
x=4'b0101; y=4'b1110; c_in=0; #5;
$finish;
end
endmodule
