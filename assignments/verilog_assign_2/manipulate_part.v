/*11.Manipulate Vector Using Part Select
Assign and modify specific bits using both busA[i] = bus[i]; and busA = bus[3:0];*/
module manipulate_part;
reg [7:0] bus;
reg [3:0] busA;
integer i;
initial begin
bus = 8'b10101100;
$display("Original data:%b",bus);
//bit by bit lower 4 bits
for (i=0; i<4; i=i+1) begin
busA[i] = bus[i];
end
$display("Manipulation of after Bit by bit of busA=%b",busA);
//part select
busA = bus[3:0];
$display("After part select=%b",bus[3:0]);
// upper modify
bus[7:4] = 4'b0011;
$display("After manipulating = %b",bus);
end endmodule
