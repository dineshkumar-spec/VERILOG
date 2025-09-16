//Create a task that performs both addition and subtraction and returns two outputs.
module add_sub;
reg [7:0]num1,num2;
reg [15:0]add,sub;
task operation(input [7:0]a,b,output [15:0]x,y);
begin
add = num1 + num2;
sub = num1 - num2;
$display("num1=%0d,num2=%0d|Addition=%0d|Subtraction=%0d",num1,num2,add,sub);
end
endtask
initial begin
num1=8'd10;num2=8'd5;
operation(num1,num2,add,sub);
num1=8'd15;num2=8'd8;
operation(num1,num2,add,sub);
end
endmodule
