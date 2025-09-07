/*Realtime for Simulation Time
Use realtime current_time = $realtime;
Display floating-point simulation time.*/
`timescale 1ns/1ps

module realtime_example;
realtime current_time;
initial begin
current_time = $realtime;
$display("Current time = %0f ns", current_time);
#2.5;
current_time = $realtime;
$display("Current time = %0f ns", current_time);
#7.25;
current_time = $realtime;
$display("Current time = %0f ns", current_time);
end
endmodule

