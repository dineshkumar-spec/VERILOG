module count;
integer count;
initial begin
count=10;
while(count>=0)begin
$display("count=%0d",count);
count = count - 1;
end
end
endmodule

