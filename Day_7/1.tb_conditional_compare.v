module tb_compare;
reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
wire[3:0] result;

compare dut (.a(a), .b(b), .c(c), .result(result));
initial begin
a=10; b=9; c=5; #5;
a=1; b=8; c=15; #5;
$display("time=%0t|a=%d|b=%d|c=%d greater number is %d",$time,a,b,c,result);
$finish;
end
endmodule
~         
