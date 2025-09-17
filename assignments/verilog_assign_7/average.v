//Write a task that takes an array of numbers and returns the average.
module average;
reg[7:0] a,b,c,d;
reg [7:0 ]avg;
task average_value;
input [7:0]n1, n2, n3, n4;
output [7:0]average;
integer sum;
begin
sum=n1+n2+n3+n4;
average=sum/4;
end
endtask
initial begin
a=8'd10;b=8'd20;c=8'd30;d=8'd40;
average_value(a,b,c,d,avg);
$display("a=%0d|b=%0d|c=%0d|d=%0d",a,b,c,d);
$display("Average:%0d",avg);
end
endmodule
