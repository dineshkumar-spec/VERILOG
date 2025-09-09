module tb_detect;
reg [7:0] x;
wire [7:0]zero;
wire [7:0]one;
detect dut(.x(x),.zero(zero),.one(one));
initial begin
$monitor("time=%0t| x=%b|zero=%b|one =%b",$time,x,zero,one);
x=8'b10101010; #5;
x=8'b11110000; #5;
$finish;
end
endmodule

