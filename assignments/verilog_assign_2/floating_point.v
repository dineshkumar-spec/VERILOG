/*Floating-Point Handling
Use real delta; and assign values like 4e10, 2.18.
Observe behavior when assigned to an integer.*/
module floating_point;
real delta;
integer int_value;
initial begin
delta = 4e10;
$display("delta=%e",delta);
delta=2.18;
$display("delta=%f",delta);
int_value = delta;
$display("int_value = %0d",int_value);
end
endmodule
 

