//Create a function that returns the minimum of two 8-bit values.
module minimum;
reg[7:0]a,b;
reg [8:0]result;
function [8:0]mini;
input [7:0]x,y;
begin
if(x<y)
mini=x;
else
mini=y;
end
endfunction
initial begin
a=8'd10;b=8'd6;
result=mini(a,b);
$display("a=%0d|b=%0d|Minimum number =%0d",a,b,result);
end
endmodule
