module tb_comp;
reg [3:0]a,b;
wire ceq,clt,cgt;
comp dut (.a(a), .b(b),.ceq(ceq), .clt(clt), .cgt(cgt));
initial begin
$monitor("time=%0t| a=%b|b=%b| a==b ceq=%b|a<b clt=%b|a>b cgt=%b",$time,a,b,ceq,clt,cgt);
a=4'b0110; b=4'b1000; #5;
$finish;
end
endmodule
