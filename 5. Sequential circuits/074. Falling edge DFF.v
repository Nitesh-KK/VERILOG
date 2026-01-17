module dff(input d,clk,rst,output reg q);
  always @(negedge clk)begin
    q<=d;
  end
endmodule
  
