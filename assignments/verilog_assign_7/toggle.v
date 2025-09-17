//Implement a task that toggles a signal every 10 time units using # delay.
module toggle;
reg clk;
task tog;
begin
#10 clk = ~clk;
$display("time=%0t|clk=%b",$time,clk);
end
endtask
initial begin
clk=0;
tog();
tog();
tog();
tog();
tog();
#100 $finish;
end
endmodule
