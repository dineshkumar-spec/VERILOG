module tb_shift;
reg [3:0]a;
wire [3:0] left;
wire [3:0] right;
shift dut (.a(a), .left(left), .right(right));
initial begin
$monitor("time=%0t|a=%b|left shift %b|right shift %d",$time,a,left,right);
a=4'b1011; #5;
a=4'b0010; #5;
a=4'b1010; #5;
$finish;
end
endmodule

