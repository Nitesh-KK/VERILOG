module tff_async(input clk,rst,t,output reg q);
  always @(posedge clk or negedge rst) begin
    if(!rst) q<=0;
    else if(t==0) q<=q;
    else q<=~q;
  end
endmodule
