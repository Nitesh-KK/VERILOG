module half_sub3(input a,b,output diff,borrow);
  always @(*) begin
    diff=a^b;
    borrow=~a&b;
  end
endmodule
