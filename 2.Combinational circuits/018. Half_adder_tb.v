module ha_tb;
  reg a,b;
  wire sum,carry;
  ha adder(a,b,sum,carry);
  initial begin
    $monitor ("a=%b b=%b sum=%d carry=%d",a,b,sum,carry);
    a=0;b=0;#2
    a=0;b=1;#2
    a=1;b=1;#2
    #6 $finish;
  end
endmodule
  
    
    
