module ha2(input a,b,output sum,carry);
  assign {carry,sum}=a+b;
endmodule
