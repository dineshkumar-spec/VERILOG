module check;
reg a,b;
initial begin
a=1;b=0;
a=0; #5;
b=1; #20;
end
initial begin
$monitor("time=%0t|a=%b|b=%b",$time,a,b);
#50; $finish;
end
endmodule
