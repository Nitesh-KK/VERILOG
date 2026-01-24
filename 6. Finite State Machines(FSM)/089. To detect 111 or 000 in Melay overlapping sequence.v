module meal_o_111or000(input clk,rst,x,output reg y);
  parameter s0=3'b000;
  parameter s1=3'b001;
  parameter s2=3'b010;
  parameter s3=3'b011;
  parameter s4=3'b100;
  reg [2:0] state,next_state;
  always @(posedge clk or negedge rst) begin
    if(!rst) state<=s0;
    else state<=next_state;
  end
  always @(state or x) begin
    case(state)
      s0: begin
        if(x==0) begin
          next_state<=s3;
          y<=1'b0;
        end
        else begin
          next_state<=s1;
          y<=1'b0;
        end
      end
      s1: begin
        if(x==0) begin
          next_state<=s3;
          y<=1'b0;
        end
        else begin
          next_state<=s2;
          y<=1'b0;
        end
      end
      s2: begin
        if(x==0) begin
          next_state<=s3;
          y<=1'b0;
        end
        else begin
          next_state<=s2;
          y<=1'b1;
        end
      end
      s3: begin
        if(x==0) begin
          next_state<=s4;
          y<=1'b0;
        end
        else begin
          next_state<=s1;
          y<=1'b0;
        end
      end
      s4: begin
        if(x==0) begin
          next_state<=s4;
          y<=1'b1;
        end
        else begin
          next_state<=s1;
          y<=1'b0;
        end
      end
    endcase
  end
endmodule
