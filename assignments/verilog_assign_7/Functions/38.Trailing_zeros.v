//Create a function that counts trailing zeros in a binary number.
module trailing;
reg [7:0] num;
reg [3:0] result;

function [7:0] count;
input [7:0]x;
integer i;
begin
count=0;
for(i=0;i<8;i=i+1)
if(x[i]==0)
count = count +1;
else
i=8;
end
endfunction

initial begin
num=11001000;
result = count(num);
$display("Number=%0b|Trailing zeros=%0d",num,result);
num=00000000;                                                                                                                        result = count(num);                                                                                                                  $display("Number=%0b|Trailing zeros=%0d",num,result);
num=11000001;                                                                                                                        result = count(num);                                                                                                                  $display("Number=%0b|Trailing zeros=%0d",num,result);
$finish;
end
endmodule
