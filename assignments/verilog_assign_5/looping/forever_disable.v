module forever_disable;
reg clk;

initial begin
clk = 0;
// Labelled block for disable control
fork
begin : clk_gen
forever #5 clk = ~clk;   // forever loop toggles clock
end
begin
#100 disable clk_gen;    // after 100 time units, stop forever loop
end
join
end
initial begin
$monitor("Time=%0t | clk=%b", $time, clk);
end
endmodule

