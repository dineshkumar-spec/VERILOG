module task_call;
reg [7:0]a,b;
reg [7:0]result;
reg[7:0]temp;
task add(input [7:0]x,input [7:0]y,output[7:0]sum);
begin
sum = x+y;
end
endtask

task double_add(input [7:0]x,input [7:0]y, output[7:0]final_sum);
begin
add(x,y,temp);
final_sum=temp*2;
end
endtask

initial begin
a=8'd15;b=8'd20;
double_add(a,b,result);
$display("a=%0d | b=%0d | Result after addition and doubling = %0d",a,b,result);
end
endmodule
