module maximum;
reg [7:0]a,b,c,d;
output reg [7:0]max;
task maximum_high(input [7:0] w,x,y,z,output [7:0]maximum);

begin
maximum=a;
if(b>maximum) maximum = b;
if(c>maximum) maximum = c;
if(d>maximum) maximum = d;
end
endtask
initial begin
a=8'd10;b=8'd20;c=8'd30;d=8'd40;
maximum_high(a,b,c,d,max);
$display("a=%0d|b=%0d|c=%0d|d=%0d|max=%0d",a,b,c,d,max);
end
endmodule
