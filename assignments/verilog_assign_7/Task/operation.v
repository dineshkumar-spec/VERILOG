//Develop a task that performs both AND and OR operations on two inputs.
module operation;
reg a,b;
reg x,y;
task and_or(input a,b,output x,y);
begin
x=a&b;
y=a|b;
$display("a=%b,b=%b|AND=%b|OR=%b",a,b,x,y);
end
endtask
initial begin
a=1'b1;b=1'b0;
and_or(a,b,x,y);
a=1'b0;b=1'b0;
and_or(a,b,x,y);
end
endmodule 

