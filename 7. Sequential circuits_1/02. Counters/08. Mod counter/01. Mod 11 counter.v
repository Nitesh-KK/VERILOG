module mod11(input rst,clk,output reg [3:0]q);
  always @(posedge clk) begin
    if(rst | q==4'd10) q<=0;
    else q<=q+1;
  end
endmodule
