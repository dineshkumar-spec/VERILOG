//Modify the given add_task to handle signed inputs.
module sign;
reg signed[7:0]a,b;
reg signed[8:0]result;
task add_numbers;
input signed [7:0]x,y;
output signed[8:0]sum;
begin
        sum=x+y;
end
endtask
initial begin
a=8'sd15; b=-8'sd45;
add_numbers(a,b,result);
$display("a=%0d,b=%0d|sum=%0d",a,b,result);
end
endmodule
