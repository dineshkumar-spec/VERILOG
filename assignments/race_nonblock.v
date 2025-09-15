//Show how race condition is resolved using non-blocking assignments.
module race_nonblock;
reg clk,a,b;

initial clk=0;
always #3 clk = ~clk;

initial begin 
a=0; b=0;
#2 a=1; b=1;
end
//2 always block with non blocking
always@(posedge clk) b<=a;
always@(negedge clk) a<=b;
initial begin
$monitor("time=%0t|a=%b|b=%b",$time,a,b);
#50 $finish;
end
endmodule
