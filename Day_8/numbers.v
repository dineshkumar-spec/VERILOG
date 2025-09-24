//15.   Write a testbench that applies all input combinations of a 4-bit bus using a for loop.
module combination;
reg [3:0]num;
integer i;
initial begin
num=0;
for(i=0;i<16;i=i+1)begin
num=i;
#5;
$display("TIME=%0t|numbers=%b",$time,num);
end
$finish;
end
endmodule
/*TIME=5|numbers=0000
TIME=10|numbers=0001
TIME=15|numbers=0010
TIME=20|numbers=0011
TIME=25|numbers=0100
TIME=30|numbers=0101
TIME=35|numbers=0110
TIME=40|numbers=0111
TIME=45|numbers=1000
TIME=50|numbers=1001
TIME=55|numbers=1010
TIME=60|numbers=1011
TIME=65|numbers=1100
TIME=70|numbers=1101
TIME=75|numbers=1110
TIME=80|numbers=1111*/
