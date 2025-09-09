module tb_encoder;
reg [3:0]d;
wire [1:0] y;
encoder dut (.d(d), .y(y);
initial begin
$monitor("time=%0t | d=%b | y=%b",$time,d,y);
d = 4'b0001; #5;
d = 4'b0010; #5;
d = 4'b0100; #5;
d = 4'b1000; #5;
d = 4'b1010; #10;  
d = 4'b0111; #10;   
d = 4'b0000; #10; 
$finish;
end
endmodule
