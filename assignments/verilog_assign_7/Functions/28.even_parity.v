//Implement a function to compute even parity using XOR.
module even;
reg [7:0]data;
reg even_parity;
function parity;
input [7:0]d;
integer i;
begin
parity = ^d;
end
endfunction
initial begin
        data = 8'b11001010;
        even_parity = parity(data);
        $display("data=%b|even parity=%b",data,even_parity);
        $finish;
end
endmodule
