module noncheck;
reg a,b;
initial begin
a<=1;b<=0;
#5; a<=0;
#20; b<=1;
end
initial begin
$monitor("time=%0t|a=%b|b=%b",$time,a,b);
#50; $finish;
end
endmodule
