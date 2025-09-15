module forever_loop;
reg clk;
initial begin 
clk=0;
forever #5 clk = ~clk;
#100 disable clk;
end
initial begin
$monitor("time=%0t|clk=%b",$time,clk);
end
endmodule
