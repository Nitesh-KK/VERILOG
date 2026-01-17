module dff(input d,clk,rst,output reg q);
  always @(posedge clk)begin
    q<=d;
  end
endmodule
  
