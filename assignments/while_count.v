module while_count;
reg [3:0] data;
integer i;
integer count;

initial begin
data = 4'b1011;
i=0;count=0;

while(i<4)begin
if(data [i]==1)
count = count+1;
i=i+1;
end
$display("Input=%b | No of ones=%0d",data,count);
end
endmodule
