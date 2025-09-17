//Create a task to simulate a left circular shift of a register value.
module left_shift;
reg[7:0]data;
reg [7:0]shift;
task left;
input [7:0]in;
output [7:0]out;
begin
out = {in[6:0],in[7]};
end
endtask
initial begin
data = 8'b11111110;
left (data,shift);
$display("Data input %0b|Shifted output %0b",data,shift);
end
endmodule
