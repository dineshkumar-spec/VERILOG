module blocking(
output reg a,b,c);
initial begin
a=#4 100;
b<=a;
#1c=#5 b;
c<=200;
$display("time=%0t|a=%b|b=%b|c=%b",$time,a,b,c);
$finish;
end
endmodule
//output-time=10|a=0|b=0|c=0
