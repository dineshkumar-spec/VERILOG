//7. What happens if you use multiple initial blocks in the same module? Demonstrate.
module multiple_init;
reg [3:0] a,b,c;

initial begin
a=4'h5;b=4'h8;c=4'h5;
$display("time=%0t|a=%0h|b=%0h|c=%0h",$time,a,b,c);
end

initial begin
#10 a=4'h9;
#15 b = 4'h7;
end

initial begin
#20 c = 4'h9;
end
initial begin
$monitor("time=%0t|a=%0h|b=%0h|c=%0h",$time,a,b,c);
end
initial begin
#60 $finish;
end
endmodule
