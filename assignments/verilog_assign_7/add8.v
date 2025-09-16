//1. Write a task to perform addition of two 8-bit numbers.
module addition;
reg[7:0]a,b;
task add_numbers(
input [7:0]x,y,
output [8:0]sum);
begin
        sum=x+y;
 $display("a=%b,b=%b|sum=%0b",a,b,sum);
end
endtask
reg[8:0]result;
initial begin
a=8'b11001010; b=8'b11001010;
add_numbers(a,b,result);
a=8'b11111101; b=8'b00111001;

add_numbers(a,b,result);
end
endmodule
