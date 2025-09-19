//Write a function to compare two inputs and return 1 if equal.
module compare;
reg[7:0]a,b;
reg [7:0]result;
function [8:0]comp;
input [7:0]x,y;
begin
if(x==y)
comp = 1;
else
comp = 0;
end
endfunction
initial begin
a=8'd10;b=8'd6;
result=comp(a,b);
$display("a=%0d|b=%0d|comparision : %0d",a,b,result);
a=8'd15;b=8'd15;                                                                                                                      result=comp(a,b);                                                                                                                    $display("a=%0d|b=%0d|comparision : %0d",a,b,result);
end
endmodule
