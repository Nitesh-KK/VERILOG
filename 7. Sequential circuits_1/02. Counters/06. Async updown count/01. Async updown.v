module tff(input clk,rst,t,output reg q,output reg qbar);
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      q<=0;
      qbar<=1;
    end
    else if(t) begin
      q<=~q;
      qbar<=~qbar;
    end
  end
endmodule
module async_updown(input mode,clk,rst,output [3:0]q,output [3:0]qbar);
  wire c1,c2,c3;
  assign c1=mode?q[0]:qbar[0];
  assign c2=mode?q[1]:qbar[1];
  assign c3=mode?q[2]:qbar[2];
  
  tff t1(.clk(clk),.rst(rst),.t(1'b1),.q(q[0]),.qbar(qbar[0]));
  tff t2(.clk(c1),.rst(rst),.t(1'b1),.q(q[1]),.qbar(qbar[1]));
  tff t3(.clk(c2),.rst(rst),.t(1'b1),.q(q[2]),.qbar(qbar[2]));
  tff t4(.clk(c3),.rst(rst),.t(1'b1),.q(q[3]),.qbar(qbar[3]));
endmodule
