//Write a task that implements a simple delay-based blinking LED simulation.
module led;
reg led;
task blink;
begin
led=1;
#10;
$display("Time=%0t|Led is ON %b",$time,led);

led=0;
#10;
$display("Time=%0t|Led is OFF %b",$time,led);
end
endtask

initial begin
led=0;
blink();
blink();
blink();
end
endmodule
