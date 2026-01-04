module full_sub1(input a,b,bin,output diff,borrow);
  assign diff=a^b^bin;
  assign borrow=(~a&b)|~(a^b)&bin;
endmodule
