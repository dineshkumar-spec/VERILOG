module for_count;
reg [3:0]data;
integer i;
integer count;

initial begin
data=4'b1111;
count=0;

for(i=0;i<4;i=i+1)begin
if(data[i]==1)
count = count+1;
end
$display("Input=%b|No of count=%0d",data,count);
end
endmodule
