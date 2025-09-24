module race;
reg a,b;

initial begin
a=1;b=0;
end
initial begin
#5;a=b;
#5;b<=a;
end
initial begin
#5;b=a;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars;
$monitor("time=%0t|a=%b|b=%b",$time,a,b);
end
endmodule
/*time=0|a=1|b=0
time=5|a=0|b=0*/
