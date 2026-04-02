module clk_div #(parameter N=7)(
  input clk_in,rst,
  output reg clk_out
);
  reg [$clog2(N)-1:0] count;
  always @(posedge clk_in or posedge rst) begin
    if(rst) begin
      count<=0;
      clk_out<=0;
    end
    else if(count==(N-1)) begin
      count<=0;
      clk_out<=~clk_out;
    end
    else count=count+1;
  end
endmodule
