module case_(
 input [1:0] s,
 output reg [6:0]y);
      always@(*)begin
      case (s)
      2'b00:y=1;
      2'b01:y=2;
      2'b10:y=3;
      2'bx0:y=4;
      2'bz1:y=5;
      2'bzz:y=6;
      default:y=0;
      endcase
      end
endmodule
