module mux_2_1(input i1,i2,s,output reg y);
  always @(*) begin
    if(s) y=i1;
    else y=i2;
  end
endmodule
