module half_sub2(input a,b,output diff,borrrow);
  assign {borrow,diff}=a-b;
endmodule
