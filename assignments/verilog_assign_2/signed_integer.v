/*Signed Integer Simulation
Use integer i;
Assign positive and negative values and simulate signed behavior.*/
module signed_integer;
integer i;
initial begin
i=100;
$display("i = %0d - positive",i);
i=-145;
$display("i = %0d - negative",i);
$finish;
end
endmodule
