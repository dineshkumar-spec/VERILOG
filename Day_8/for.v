//13.Write Verilog to add all elements of an 8-element register array using a for loop.
module element;
reg [7:0] arr [0:7];
integer sum;
integer i;
initial begin
        arr[0]=8'd20;
        arr[1]=8'd20;
        arr[2]=8'd20;
        arr[3]=8'd20;
        arr[4]=8'd20;
        arr[5]=8'd20;
        arr[6]=8'd20;
        arr[7]=8'd20;
sum=0;
for(i=0;i<8;i=i+1)begin
sum = sum + arr[i];
end
$monitor("sum of array=%0d",sum);
end
endmodule
