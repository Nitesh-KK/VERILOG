module srff_tb;
  reg clk,s,r;
  wire q;
  srff s1(clk,s,r,q);
  initial  clk=0;
  always #3 clk=~clk;
  initial begin
    s=0;r=0;
    $monitor("%t: clk=%d s=%b r=%b q=%b",$time,clk,s,r,q);
    #5 s=0;r=1
    #3 s=1;r=1;
    #4 s=0;r=0;
    #5 s=1;r=0;
    #3 $finish
  end
  initial begin
    $dumpfile("sr_flip.vcd");
    $dumpvars(1,tb);
  end
endmodule
