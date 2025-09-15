module tb_gtob;
reg [3:0] gray;
wire [3:0] binary;
gtob dut (.gray(gray), .binary(binary));

initial begin
$monitor("time=%0t|gray=%b|binary=%b",$time,gray,binary);
gray = 4'b0110; #5;
gray = 4'b0101; #5;
$finish;
end
endmodule
