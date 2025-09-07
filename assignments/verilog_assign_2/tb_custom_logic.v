module tb_custom_logic;
reg x,y,z;
wire f;
custom_logic dut (.x(x), .y(y), .z(z), .f(f));
initial begin
$dumpfile("custom_logic.vcd");
$dumpvars(0,tb_custom_logic);
$monitor("time=%0t| x=%b, y=%b, z=%b, f=%f",$time,x,y,z,f);
x=0; y=0; z=0; #5;
x=0; y=0; z=1; #5;
x=0; y=1; z=0; #5;
x=0; y=1; z=1; #5;
x=1; y=0; z=0; #5;
x=1; y=0; z=1; #5;
x=1; y=1; z=0; #5;
x=1; y=1; z=1; #5;
$finish;
end
endmodule

