module taskeg;
reg[3:0]a,b;

task add_numbers;
input [3:0] x,y;
output [4:0] sum;
 begin
 sum = x+y;
 $display("a=%b,b=%b|sum=%b",x,y,sum);
 end
endtask
reg[4:0] result;
initial begin
a=4'b0101;
b=4'b0011;
add_numbers(a,b,result);

a=4'b1001; b=4'b0110;
add_numbers(a,b,result);
$finish;
end
endmodule
~          
