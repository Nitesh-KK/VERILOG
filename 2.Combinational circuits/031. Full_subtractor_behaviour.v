module full_sub3(input a,b,bin,output diff,borrow);
  always @(*) begin
    diff=a^b^bin;
    borrow = ~a&b|~(a^b)&bin;
  end
endmodule
