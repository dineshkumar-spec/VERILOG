module multiple_if(
input a,
input b,
input x,
input y,
output reg out1,
output reg out2);
always@(*)begin
if(a&b)
out1=1;
else if(a|b)
out1=1;
else
out1=0;
end

always@(*)begin
if(x+y)
out2=0;
else if(x-y)
out2=0;
else
out2=1;
end
endmodule

