module full_sub(input a,b,bin,output diff,borrow);
  wire x,y,z;
  xor(x,a,b);
  xor(diff,x,bin);
  and(y,~a,b);
  and(z,~x,bin);
  or(borrow,y,z);
endmodule
