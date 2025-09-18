//Write a function that returns the sum of two 8-bit inputs.
module addition(
input[7:0]a,b,
output [8:0]result);
function [8:0]add_numbers;
input [7:0]a,b;
begin
        add_numbers = a+b;
end
endfunction
assign result = add_numbers(a,b);
endmodule
