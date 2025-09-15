module mix_example;
reg clk;
reg a,b;
always@(posedge clk)begin
a=1'b0; b=1'b1;
b=a;
a<=b;
end
initial begin
$monitor("a=%b | b=%b",a,b); 
clk=1;
end
endmodule
