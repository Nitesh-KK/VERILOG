module sipo(
  input rst,clk,sin,
  output [3:0]sout
);
  reg [3:0]shift;
  always @(posedge clk) begin
    if(rst) shift<=4'b0000;
    else shift<={shift[2:0],sin};
  end
  assign sout=shift;
endmodule
