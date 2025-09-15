module siso_shift_reg (
    input  clk,         // Clock
    input  rst,         // Active-high reset
    input  si,          // Serial input
    output reg so       // Serial output
);

reg q0, q1, q2;  // 3 flip-flops

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q0 <= 0;
        q1 <= 0;
        q2 <= 0;
        so <= 0;
    end
    else begin
        q2 <= q1;   // Shift right
        q1 <= q0;
        q0 <= si;   // New data in
        so <= q2;   // Serial output (last stage)
    end
end

endmodule

