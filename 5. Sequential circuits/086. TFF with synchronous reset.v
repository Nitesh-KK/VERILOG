module tff_sync(input clk,rst,t,output reg q);
  always @(posedge clk) begin
    if(rst) q<=0;
    else if(t==0) q<=q;
    else q<=~q;
  end
endmodule
