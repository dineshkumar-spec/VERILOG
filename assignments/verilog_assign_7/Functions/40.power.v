//Implement a function that calculates a^b using loop (a to the power b).
module loop;
reg [7:0] base;
reg [7:0]exp;
reg [15:0]result;

function [31:0] power_value;
input [7:0] x;
input [7:0 ]y;
integer i;
begin
power_value=1;
for(i=1;i<8;i=i+1)
power_value = power_value*x;
end
endfunction

initial begin
base=2; exp=5;
result=power_value(base,exp);
$display("Base=%0d|exp=%0d|power_value=%0d",base,exp,result);
end
endmodule
