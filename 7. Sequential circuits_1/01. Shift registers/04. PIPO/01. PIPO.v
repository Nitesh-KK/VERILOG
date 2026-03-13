module pipo(
  input rst,clk,
  input [3:0] pin,
  output reg [3:0]pout
);
  always @(posedge clk) begin
    if(rst) pout<=4'b0000;
    else pout<=pin;
  end
endmodule
