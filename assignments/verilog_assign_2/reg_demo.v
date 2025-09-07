/*2. Comparison of Wire and Reg
Implement two separate modules:
• One using wire and assign
• Another using reg and procedural assignment
Compare their simulation behavior.*/
module wire_demo;
wire net1, net2;
assign net1 = 1'b1;
assign net2 = net1;
initial begin
$display("net1=%b, net2=%b",net1,net2);
$finish;
end
endmodule
//reg_demo
module reg_demo;
reg r1,r2;
initial begin
r1=1'b1;
r2=r1;
$display ("Reg demo:");
$display ("r1=%b, r2=%b", r1, r2);
#5 r1=1'b0;
r2 = r1;
$display ("After update: r1=%b, r2=%b",r1,r2);
$finish;
end
endmodule
/*Key Differences Summarized:
Assignment Type:
wire uses assign (continuous), reg uses procedural assignments within always/initial blocks.
Storage Capability:
wire does not store values, reg can store values.
Hardware Representation:
wire typically represents combinational logic, while reg can represent sequential logic (flip-flops/latches) or combinational logic.
Usage:
wire for connecting components and combinational logic, reg for internal storage and behavioral modeling.*/

