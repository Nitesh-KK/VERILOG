module half_sub1(input a,b,output diff,borrow);
  assign diff=a^b;
  assign borrow=~a&b;
endmodule
