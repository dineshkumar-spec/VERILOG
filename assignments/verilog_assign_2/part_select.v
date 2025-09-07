/*10.Part Select Operation
Extract lower nibble from reg [7:0] bus using bus[3:0].*/
module part_select;
reg [7:0] data;
initial begin
data = 8'b10101100;
$display("Data =%b",data[3:0]);
end
endmodule
