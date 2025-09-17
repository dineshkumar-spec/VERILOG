module reverse;
    integer n;
    integer rev;

    // Task to reverse a number
    task reverse_num;
        input integer num;
        output integer rev;
        integer rem;
        begin
            rev = 0;
            while (num > 0) begin
                rem = num % 10;
                rev = rev * 10 + rem;
                num = num / 10;
            end
        end
    endtask

    initial begin
        n = 1234;
        reverse_num(n, rev);
        $display("Reverse of number %0d = %0d", n, rev);
    end
endmodule
