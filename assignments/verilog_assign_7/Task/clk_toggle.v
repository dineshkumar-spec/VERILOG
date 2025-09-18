//Create a task to toggle a clock signal 10 times with a delay of 5 time units.
module clk_toggle;
reg clk;
task toggle;
begin
clk=0;
#5;
$display("time=%0t|clk=%b",$time,clk);
clk=1;
#5;
$display("time=%0t|clk=%b",$time,clk);
end
endtask
initial begin
repeat(10)begin
toggle();
end
#50 $finish;
end
endmodule

