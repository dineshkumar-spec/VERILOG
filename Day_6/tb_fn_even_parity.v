module tb_fn_example;
reg[7:0]data_in;
wire parity_bit;
fn_example dut (.data_in(data_in), .parity_bit(parity_bit));
initial begin
data_in=8'b10101010;
#10; $display("input:%b,parity_bit:%b",data_in,parity_bit);
data_in=8'b11110000;                                                                                                                     #10; $display("input:%b,parity_bit:%b",data_in,parity_bit);
$stop;
end
endmodule
