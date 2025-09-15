module race(input clk, input d, output reg x, output reg y);
    always @(posedge clk) begin
        x <= d;    // schedules update
        y <= x;    // uses OLD x, not new
    end
endmodule
