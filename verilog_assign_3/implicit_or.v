/*Demonstrate implicit net declaration by creating a module where undeclared out is
assigned using assign out = a | b;.*/
module implicit_or(input a,b);
assign out = a | b;
module tb_implicit_or;
reg a,b;
wire out;
implicit_or dut (.a(a), .b(b), .out(out));
initial begin 
$display("time=%0t|a=%b|b=%b",$time,a,b,out);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
end
endmodule
