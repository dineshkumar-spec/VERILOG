module block(
output reg a,b,c);
initial begin
#10 a<=1'b0;
#1 b<=1'b1;
a<=1;
#5 b<=a;
#5 c<=b;
$monitor("time=%0t|a=%b|b=%b|c=%b",$time,a,b,c);
$finish;
end
endmodule
