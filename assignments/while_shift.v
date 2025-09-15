module while_shift;
reg [7:0] data;
integer count;

initial begin 
data = 8'b00001010;
count=0;

$display("Initial data:%b",data);

while(data[7]==0)begin
data = data << 1;
count = count + 1;
$display("Shift=%0d | data =%b",count,data);
end
$display("Final display =%b (MSB=1 after %0d shifts",data,count);
end
endmodule
