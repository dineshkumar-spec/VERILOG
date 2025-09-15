module multiple_always;
reg [15:0]a,b,c;
//always 1
initial a = 0;
always #5 a = a + 1;
//always2
initial b = 9;
always #10 b = b - 1;

//always 3
initial c = 7;
always #15 c = c + 1;

initial begin
$monitor("time=%0t|a=%0d|b=%0d|c=%0d",$time,a,b,c);
#50 $finish;
end
endmodule


