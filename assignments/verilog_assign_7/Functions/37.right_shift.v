//Implement a function that shifts input right by n bits.
module shift;
reg[7:0]num;
reg [7:0]result;

function [7:0]shifted;
input [7:0]x;
input [2:0]n;
begin
shifted = x >> n;
end
endfunction

initial begin
num=8'b11111000;
result=shifted(num,2);
$display("Number=%0b(%d)|Shifted number with 2 times =%0b(%d)",num,num,result,result);//divide for right shift

num=8'b10101100;
result=shifted(num,4);
$display("Number=%0b(%d)|Shifted number with 4 times =%0b(%d)",num,num,result,result);
end
endmodule
