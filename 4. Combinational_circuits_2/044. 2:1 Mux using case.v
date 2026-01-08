module mux_2_1(input s,i1,i2,output reg y);
  always @(*) begin
    case(s)
      0:y=i2;
      1:y=i1;
    endcase
  end
endmodule
