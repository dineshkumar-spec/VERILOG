module blk_assign();
reg a,b;
reg clk;
always@(posedge clk) begin
a = 1'b0; b= 1'b1; //initially
a=1; //executed first
b = a; //executed second
$monitor("a = %b,b = %b",a,b);
end
initial
clk = 1;
endmodule
