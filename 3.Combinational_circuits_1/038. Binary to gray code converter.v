module bin_to_gray(input [3:0] bin,output [3:0] gray);
  assign gray[3]=bin[3];
  genvar i;
  generate
    for(i=0;i<3;i++) begin
      assign gray[i]=bin[i]^bin[i+1];
    end
  endgenerate
endmodule
