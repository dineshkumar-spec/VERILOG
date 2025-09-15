/*genvar → loop index for hardware replication.

generate → repeats code blocks (like a hardware-aware for-loop).

You can use it to initialize each element of an array (with initial for simulation, or reset logic for synthesis)*/
//Use generate and genvar to initialize an 8-bit register array.

module reg_array;
reg [7:0] r_array;
genvar i;
generate
for(i=0;i<8;i=i+1)begin
 initial r_array[i] = 1'b0;
end
endgenerate

initial begin
$monitor("time=%0t| array=%b",$time,r_array);
#5 r_array = 8'b11110000;
#5 r_array = 8'b10101010;
end
endmodule
