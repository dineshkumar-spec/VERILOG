//Create a function that returns the number of 1’s in an 8-bit input
module ones;
reg[7:0]a;
reg [7:0]result;
function [7:0]one;
input [7:0]x;
integer i;
begin
one=0;
for(i=0;i<8;i=i+1)begin
   if(x[i]==1)
   one = one + 1;
end
end
endfunction
initial begin
a=8'b10110101;
result=one(a);
$display("a=%0b|Number of ones =%0d",a,result);
#5; $finish;
end
endmodule
~         
