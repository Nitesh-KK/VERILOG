module half_sub_tb;
  reg a,b;
  wire diff,borrow;
  half_sub h1(a,b,diff,borrow);
  initial begin  
    a=0;b=0;#2;
    a=0;b=1;#2;
    a=1;b=0;#2;
    a=1;b=1;#2;
  end
    initial begin
      $monitor("time =%0d, a=%b;b=%b;diff=%b;borrow=%b",$time ,a,b,diff,borrow);
    end
endmodule
