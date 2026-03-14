module sync_down(input clk,rst,output reg[3:0]q);
  always @(posedge clk) begin
    if(rst) q<=15;
    else q<=q-1;
  end
endmodule
