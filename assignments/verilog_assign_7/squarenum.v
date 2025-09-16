//Write a task to calculate the square of an 8-bit input number.
module square;
reg [7:0]a;
reg [15:0]out;
task sq(input [7:0]num,output [15:0]result);
begin
out = a*a;
$display("a=%0d|out=%0d",a,out);
end
endtask
initial begin
a=8'd5;
sq(a,out);
a=8'd9;
sq(a,out);
end
endmodule
