module usr(
  input clk,rst,sl,sr,
  input [3:0] data,
  input [1:0] sel,
  output reg [3:0] dout
);
  always @(posedge clk) begin
    if(rst) dout<=4'b0;
    else begin
      case(sel)
        2'b00: dout<=dout;
        2'b01: dout<={sr,dout[3:1]};
        2'b10: dout<={dout[2:0],sl};
        2'b11: dout<=data;
        default: dout<=dout;
      endcase
    end
  end
endmodule
