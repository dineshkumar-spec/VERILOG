//Create a function that returns the difference of two inputs.
module difference;
reg[7:0]a,b;
reg [8:0]result;
function [8:0]diff;
input [7:0]x,y;
begin
        diff = x-y;
end
endfunction
initial begin
a=8'd10;b=8'd6;
result=diff(a,b);
$display("a=%0d|b=%0d|Difference=%0d",a,b,result);
end
endmodule
