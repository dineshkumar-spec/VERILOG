module two_always;
reg a,b;
initial a = 0;
always #8 a = ~a;

initial b=1;
always # 5 b = ~b;

initial begin
$monitor("time=%0t|a=%b|b=%b",$time,a,b);
#40 $finish;
end 
endmodule
