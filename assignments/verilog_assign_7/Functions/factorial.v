module factorial;
input [7:0]num;
output [15:0]out;

function automatic[7:0]fact;
input [7:0]n;
begin
if(n==1)
fact=1;
else
fact=n*fact(n-1);
end
endfunction
initial begin
$display("Factorial of Number  1 is %d",fact(1));
$display("Factorial of Number  5 is %d",fact(5));
$display("Factorial of Number  3 is %d",fact(3));
end
endmodule
~         
