/*3. Net Types Exploration
Write a Verilog module using:
• wand, wor, tri, triand
• Drive them using assign and simulate with #delay and $monitor.*/
module net_type;
wand value1;
wor value2;
tri value3; 
triand value4;

assign value1=1'b1;
assign value1=1'b0;

assign value2=1'b1;
assign value2=1'b0;

assign value3=1'bz;
assign value3=1'b1;

assign value4=1'bz;
assign value4=1'b0;

initial begin
$monitor("time=%0t, wand result=%b, wor result=%b, tri result=%b, triand=%b",$time,value1,value2,value3,value4);
#10;

$finish;
end
endmodule
