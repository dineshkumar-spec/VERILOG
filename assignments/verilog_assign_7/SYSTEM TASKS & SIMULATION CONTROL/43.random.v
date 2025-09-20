//Write a testbench that uses $random to generate test data.
module randomvalue;
reg [7:0]a,b;
wire [8:0]sum;
integer i;
assign sum = a + b;
initial begin
        for(i=0;i<5;i=i+1)begin
a=$random;
b=$random;
$display("a=%0d|b=%0d|sum=%0d",a,b,sum);
end
end
endmodule
