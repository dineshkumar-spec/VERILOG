//Create a function to reverse the bits of an input.
module reverse_num;
reg [7:0]num;
reg[7:0] rev;
function [7:0]reverse;
input [7:0]n;
integer i;
begin

        for(i=0;i<=7;i=i+1)begin
        reverse[7-i]=n[i];
end
end
endfunction
initial begin
num=8'b11110000;
rev=reverse(num);
$display("input number=%0b|Reverse of number : %08b",num,rev);
num=8'b10011100;                                                                                                                     rev=reverse(num);
$display("input number=%0b|Reverse of number : %08b",num,rev);
$finish;
end
endmodule
~         
