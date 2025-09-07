/*Register Assignment
Create a module that uses:
• reg [7:0] data
Assign and display a binary value.*/
module reg_ass;
reg [7:0] data;
initial begin
data = 8'b 11001100;
$display("Binary value of data:=%b",data);
$display("Decimal value of data:=%d",data);
#10;
$finish;
end
endmodule

