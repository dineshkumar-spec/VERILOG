module subtraction;
reg[7:0]a,b;
reg[8:0]result;
task sub_numbers(
input [7:0]x,y,
output [8:0]sub);
begin
        sub=x-y;
 $display("a=%b,b=%b|sub=%0b",a,b,sub);
end
endtask
initial begin
a=8'b11001010; b=8'b01001000;
sub_numbers(a,b,result);
a=8'b11111101; b=8'b00111001;

sub_numbers(a,b,result);
end
endmodule
