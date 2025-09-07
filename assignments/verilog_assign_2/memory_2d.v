/*13.2D Memory Access
Declare reg [7:0] mem[3:0][3:0];
Write nested loops to assign values and print specific bytes like mem[3][2].*/
module memory_22d;
reg [7:0] mem [3:0][3:0];
integer i,j;
initial begin
//values for memory
for(i=0;i<4;i=i+1)begin
for(j=0;j<4;j=j+1)begin
mem[i][j]=(i*4+j)*8'h11;
end
end
//display full memory
$display("2D Memory contents:");
for(i=0;i<4;i=i+1) begin
$write("\n");
for(j=0;j<4;j=j+1) begin
$write("%h",mem[i][j]);
end
$write("\n");
end
//access
$display("Specific access: mem[1][2]=%h",mem[1][2]);
end
endmodule

