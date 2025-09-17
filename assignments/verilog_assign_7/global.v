//Write a task to drive a global variable from within the task.
module led;
reg led;    //global variable
task changes;
begin
led=1;      //directly changing values
end
endtask
initial begin
led=0;
$display("Led before task %b",led);
changes();
$display("Led after task %b",led);
end
endmodule
