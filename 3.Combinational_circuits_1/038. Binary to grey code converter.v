module bin_to_grey(input [3:0] bin,output [3:0] grey);
  assign grey[3]=bin[3];
  genvar i;
  generate
    for(i=2;i>=0;i--) begin
      assign grey[i]=bin[i]^bin[i+1];
    end
  endgenerate
endmodule
