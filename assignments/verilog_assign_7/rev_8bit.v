module reverse_number;
reg [7:0]n;
reg [7:0]rev;
task reverse;
input [7:0]in;
output [7:0]out;
integer i;
begin
for(i=0;i<8;i=i+1)begin
out[i] = in[7-i];
end
end
endtask
initial begin
n=8'b11010110;
reverse(n,rev);
$display("Number=%0b|Reversed number=%08b",n,rev);
n=8'b11110000;
reverse(n,rev);
$display("Number=%0b|Reversed number=%08b",n,rev);
end
endmodule
