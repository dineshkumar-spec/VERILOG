module pattern;
    integer i, j, k;

    initial begin
        // First half
        for(i = 1; i <= 4; i = i + 1) begin
            // Print leading spaces
            for(j = 1; j <= 4-i; j = j + 1)
                $write(" ");

            // Print numbers
            for(k = 1; k <= i; k = k + 1)
                $write("%0d ", i);

            $display(""); // new line
        end

        // Second half
        for(i = 3; i >= 1; i = i - 1) begin
            // Print leading spaces
            for(j = 1; j <= 4-i; j = j + 1)
                $write(" ");

            // Print numbers
            for(k = 1; k <= i; k = k + 1)
                $write("%0d ", i);

            $display(""); // new line
        end
    end
endmodule
