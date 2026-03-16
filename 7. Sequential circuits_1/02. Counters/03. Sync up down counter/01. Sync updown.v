module sync_updown(input mode,clk,rst,output reg [3:0]q);
  always @(posedge clk) begin
    if(rst) q<=0;
    else begin
      if(mode) q<=q+1;
      else q<=q-1;
    end
  end
endmodule
