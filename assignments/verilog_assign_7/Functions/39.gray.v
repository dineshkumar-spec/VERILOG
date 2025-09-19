//Write a function that returns the Gray code of a 4-bit binary number.
module gray_code;
reg [3:0] data;
reg [3:0] out;

function  [3:0] gray;
input [3:0] d;
begin
gray[3]=d[3];
gray[2]=d[3]^d[2];
gray[1]=d[2]^d[1];
gray[0]=d[1]^d[0];
end
endfunction

initial begin
$dumpfile("gray.vcd");
$dumpvars;
data=4'b1010;
out = gray(data);#5;
$display("Binary %0b to Gray number is %0b",data,out);
data=4'b1001;
out = gray(data); #5;
$display("Binary %0b to Gray number is %0b",data,out);
#50; $finish;
end
endmodule
