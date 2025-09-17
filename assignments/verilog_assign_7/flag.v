//Write a task that checks whether two 8-bit inputs are equal and sets a flag.
module flag;
reg[7:0]a,b;
reg result;
task flag_value;
input [7:0]x,y;
output out;
begin
        if(a==b)
        out=1;
        else
        out=0;
end
endtask
initial begin
a=8'd5; b=8'd10;
flag_value(a,b,result);
 $display("a=%0d,b=%0d|flag=%0d",a,b,result);
a=8'd20; b=8'd20;
flag_value(a,b,result);
 $display("a=%0d,b=%0d|flag=%0d",a,b,result);
end
endmodule
