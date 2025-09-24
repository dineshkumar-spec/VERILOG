//What happens if you swap two registers using blocking assignments inside an always block?
module swap;
reg [1:0] a;
reg [1:0] b;
reg [1:0]temp;
initial begin
a=2'b00;b=2'b11;
end

always begin
#2;temp = a;
a=b;
b=temp;
end
initial begin
$dumpfile("wave.vcd");
$dumpvars;
$monitor("time=%0t|temp=%b|a=%b|b=%b",$time,temp,a,b);
#20; $finish;
end
endmodule
/*time=0|temp=xx|a=00|b=11
time=2|temp=00|a=11|b=00
time=4|temp=11|a=00|b=11
time=6|temp=00|a=11|b=00
time=8|temp=11|a=00|b=11
time=10|temp=00|a=11|b=00
time=12|temp=11|a=00|b=11
time=14|temp=00|a=11|b=00
time=16|temp=11|a=00|b=11
time=18|temp=00|a=11|b=00
swap.v:19: $finish called at 20 (1s)
time=20|temp=11|a=00|b=11*/
