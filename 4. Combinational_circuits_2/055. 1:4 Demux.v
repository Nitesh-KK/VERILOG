module demux_1_4(input i,s1,s2,output y1,y2,y3,y4);
  always @(*) begin
    case({s1,s2})
      2'b00: {y1,y2,y3,y4}={3'b000,i};
      2'b01: {y1,y2,y3,y4}={2'b00,i,1'b0};
      2'b10: {y1,y2,y3,y4}={1'b0,i,2'b00};
      2'b11: {y1,y2,y3,y4}={i,3'b000};
    endcase
  end
endmodule
