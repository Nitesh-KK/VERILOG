module tff(input clk,rst,t,output reg q);
  always @(negedge clk or posedge rst) begin
    if(rst) q<=0;
    else if(t) q<=~q;
  end
endmodule
module mod6(input clk,rst,output [2:0]q);
  wire reset;
  assign reset=rst|(q[2]&q[1]);
  
  tff t1(.clk(clk),.rst(reset),.t(1'b1),.q(q[0]));
  tff t2(.clk(q[0]),.rst(reset),.t(1'b1),.q(q[1]));
  tff t3(.clk(q[1]),.rst(reset),.t(1'b1),.q(q[2]));
endmodule
