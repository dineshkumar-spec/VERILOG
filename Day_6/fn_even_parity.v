module fn_example(
input [7:0]data_in,
output parity_bit);
function even_parity;
input[7:0]d_in;
integer i;
begin
even_parity=0;
for(i=0;i<8;i=i+1)begin
even_parity=even_parity^d_in[i];
end
end
endfunction
assign parity_bit=even_parity(data_in);
endmodule
