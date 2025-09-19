//33. Write a function that multiplies two numbers without using *.
module multiple;
reg[7:0]a,b;
reg [15:0]result;
function [8:0]multiple_numbers;
input [7:0]x,y;
integer i;
begin
        multiple_numbers=0;
        for(i=0;i<y;i=i+1)
        multiple_numbers=multiple_numbers+x;
end
endfunction
initial begin
a=8'd10;b=8'd6;
result=multiple_numbers(a,b);
$display("a=%0d|b=%0d|Multiplication=%0d",a,b,result);
end
endmodule
