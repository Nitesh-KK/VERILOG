module piso(
  input rst,clk,load,
  input [3:0] pin,
  output sout
);
  reg [3:0] shift;
  always @(posedge clk) begin
    if(rst) shift<=4'b0000;
    else if(load) shift<=pin;
    else shift={shift[2:0],1'b0};
  end
  assign sout=shift[3];
endmodule
