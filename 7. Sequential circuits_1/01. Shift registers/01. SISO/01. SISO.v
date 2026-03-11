module siso(
  input rst,clk,sin,
  output sout
);
  reg [3:0]shift;
  always @(posedge clk) begin
    if(rst) shift<=4'b0000;
    else shift<={shift[2:0],sin};
  end
  assign sout=shift[3];
endmodule
