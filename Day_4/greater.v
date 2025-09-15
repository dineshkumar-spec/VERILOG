module greater;
integer a,b;
initial begin 
a=100;
b=10;
if (a>b)
$display("a is greater than b");
else if(a<b)
$display("a is less than b");
else 
$display("a is equal to b");
end
endmodule
