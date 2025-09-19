//Write a function to compute the absolute value of a signed input.
module signe;
reg signed [7:0]a;
reg [8:0]result;
function [8:0]abs_value;
input signed [7:0]a;
begin
        abs_value =(a<0)? -a : a;
end
endfunction
initial begin
a=-10;
result=abs_value(a);
$display("a=%0d|Absolute value = %0d",a,result);
a=-6;
result=abs_value(a);
$display("a=%0d|Absolute value = %0d",a,result);
end
endmodule
