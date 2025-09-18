//Write a function that calculates the square of a number.
module square;
reg[7:0]a;
reg [15:0]result;
function [8:0]sq;
input [7:0]x;
begin
        sq = x*x;
end
endfunction
initial begin
a=8'd10;
result = sq(a);
$display("Square of %0d is %0d",a,result);
end
endmodule
