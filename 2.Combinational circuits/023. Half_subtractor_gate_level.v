module half_sub(input a,b,output diff,borrow);
  xor (diff,a,b);
  and (borrow,~a,b);
endmodule
  
