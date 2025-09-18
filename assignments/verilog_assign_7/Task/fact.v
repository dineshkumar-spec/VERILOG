//Write a task that calculates the factorial of a number using a loop (not recursion).
module fact;
reg [7:0]n;
reg [15:0]result;

task factorial;
	input [7:0]num;
	output[15:0]fact;
	integer i;
begin
fact=1;
for(i=1;i<=num;i=i+1)begin
fact = fact*i;
end
end
endtask
initial begin
n=5;
factorial(n,result);
$display("Factorial of a number %0d = %0d",n,result);
end
endmodule

