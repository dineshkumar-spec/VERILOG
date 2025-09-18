//Create a function that returns the XOR of all bits of an input (odd parity).
module xor_parity;
reg [7:0]data;
reg odd_parity;
function parity;
input [7:0]d;
integer i;
begin
parity = ~^d;
end
endfunction
initial begin
        data = 8'b11001010;
        #10;
        odd_parity = parity(data);
        $display("data=%b|odd parity=%b",data,odd_parity);
        $finish;
end
endmodule
~         
