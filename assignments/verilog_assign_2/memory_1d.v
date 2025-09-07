/*12.1D Memory Model
Declare reg [7:0] mem[7:0];
Write and read values to/from it.*/
module memory_1d;
reg [7:0] mem [0:7];
integer i;
initial begin
mem[0] = 8'h11;
mem[1] = 8'h22;
mem[2] = 8'h33;
mem[3] = 8'h44;
mem[4] = 8'h55;
mem[5] = 8'h66;
mem[6] = 8'h77;
mem[7] = 8'h88;
for (i = 0; i < 8; i = i + 1) begin
$display("mem[%0d] = %h", i, mem[i]);
end
//Access specific locations
$display("Reading mem[3] = %h", mem[3]);
$display("Reading mem[6] = %h", mem[6]);
end
endmodule
