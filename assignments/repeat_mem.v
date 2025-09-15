module repeat_mem;
reg [7:0] mem [0:15];
integer i;

initial begin 
i=0;
repeat (16) begin
mem [i]=i;
i=i+1;
end

for(i=0;i<16;i=i+1)
$display("mem[%0d]=%0d (0x%0h)",i,mem[i],mem[i]);
end
endmodule
