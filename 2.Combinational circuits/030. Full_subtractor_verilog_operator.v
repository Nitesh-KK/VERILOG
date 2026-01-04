module full_sub2(input a,b,bin,output diff,borrow);
  assign {borrow,diff}=a-b-bin;
endmodule
