module gray_to_bin(input [3:0] gray,output [3:0]bin);
  assign bin[3]=gray[3];
  genvar i;
  generate
    for(i=0;i<3;i++) begin
      assign bin[i]=bin[i+1]^gray[i];
    end
  endgenerate
endmodule
