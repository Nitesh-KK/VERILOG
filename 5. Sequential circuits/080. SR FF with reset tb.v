module srff_tb;
  reg clk,s,r,rst;
  wire q;
  srf_rst s1(clk,rst,s,r,q);
  initial  begin
    clk=0;
    rst=1;
    #3 rst=0;
  end
  always #3 clk=~clk;
  initial begin
    s=0;r=0;
    $monitor("%t: clk=%b rst=%b s=%b r=%b q=%b",$time,clk,rst,s,r,q);
    #5 s=0;r=1;
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
