/*Demonstrate implicit net declaration by creating a module where undeclared out is
assigned using assign out = a | b;.*/
module or(input a,b);
assign out = a | b; // wire 
endmodule
