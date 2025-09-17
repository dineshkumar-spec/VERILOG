//Create a task that performs multiplication and outputs the result using $display.
module multiplication;
reg[7:0]a,b;
reg[8:0]result;
task multiple_numbers;
input [7:0]x,y;
output [8:0]multiple;
begin
        multiple=x*y;
end
endtask
initial begin
a=8'd5; b=8'd10;
multiple_numbers(a,b,result);
 $display("a=%0d,b=%0d|multiple=%0d",a,b,result);
a=8'd2; b=8'd20;
multiple_numbers(a,b,result);
 $display("a=%0d,b=%0d|multiple=%0d",a,b,result);
end
endmodule
