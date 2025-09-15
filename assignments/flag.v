module flag(
input f1,
input f2,
input f3,
output reg out);

always@(*)begin
if(f1 && f2 && f3)
	out=1;
else if((f1&&f2)||
       (f2&&f3)||
       (f1&&f3))
out = 1;
else 
	out=0;
end
endmodule
