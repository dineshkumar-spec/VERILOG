//Create a function that performs a logical AND on all bits of a bus.
module logical;
reg[7:0]a;
reg [7:0]result;
function [7:0]and_all;
input [7:0]x;
integer i;
reg temp;
begin
        temp = 1;
        for(i=1;i<8;i=i+1)
        temp = temp && x[i];
        and_all = temp;
end
endfunction
initial begin
a=8'b11100110;
result=and_all(a);
$display("a=%0b|Logical and = %0b",a,result);

a=8'b11111111;
result=and_all(a);
$display("a=%0b|Logical and = %0b",a,result);
end
endmodule
