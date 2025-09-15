module racefree;
reg clk,d;
reg x,y;
always@(posedge clk)begin
x<=d;
y<=x;
end

initial clk=0;
always #5 clk = ~clk;

initial begin
$monitor("time=%0t|d=%b|x=%b|y=%b",$time,d,x,y);
d=0; #5;
d=1; #5;
d=0; #5;
d=1; #5;
#10 $finish;
end
endmodule
