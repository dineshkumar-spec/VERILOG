module ifmux(
input in1,in2,
input sel,
output reg y);
always@(*)begin
if(sel)
y=in1;
else
y=in2;
end
endmodule
~                                                                                                                                    ~            
