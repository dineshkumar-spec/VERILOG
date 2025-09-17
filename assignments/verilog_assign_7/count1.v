//Write a task that counts the number of 1s in an 8-bit input.
module count;
reg[7:0]a;
reg[7:0]result;
task counting;
input [7:0]x;
output [7:0]out;
integer i;
begin
        out=0;
       for(i=0;i<8;i=i+1)begin
        if(x[i]==1)
        out = out + 1;
        end
end
endtask
initial begin
a=8'b10011101;
counting(a,result);
$display("Input=%0b,No of ones = %0d",a,result);
end
endmodule
