module mux2to1(
input in1,in2,
input sel,
output y);
assign y = (sel) ? in1: in2;
endmodule
