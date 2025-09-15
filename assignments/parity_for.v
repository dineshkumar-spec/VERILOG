module parity_for;
reg [7:0] data;
reg parity; 
integer i;

initial begin
data = 8'b10010111;
parity =0;

for(i=0;i<8;i=i+1)begin
parity = parity^data[i];
end

$display("Input data=%b",data);
$display("parity = %b",parity); 
end
endmodule
