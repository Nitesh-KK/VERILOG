module even_clk_div #(parameter N=8)(input clk,rst,output reg clk_out);
  reg [$clog2(N)-1:0] count;
  always @(posedge clk or posedge rst) begin
    if(N%2==0) begin
      if(rst) begin
        count<=0;
      	clk_out<=0;
      end
      else if(count==(N/2)-1) begin
        count<=0;
        clk_out<=~clk_out;
      end
      else count<=count+1;
    end
    else clk_out=1'bx;
  end
endmodule
