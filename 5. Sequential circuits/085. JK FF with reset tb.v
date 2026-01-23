module jkff_tb;
  reg clk,rst,j,k;
  wire q;
  jkff_sync jk1(clk,rst,j,k,q);
  always #3 clk=~clk;
  initial begin
    $monitor("%t:clk=%0d,rst=%0d,j=%0d,k=%0d,q=%0d",$time,clk,rst,j,k,q);
    clk=0;rst=0;
    #3 rst=1;
    #6 rst=0;
    #3 j=1 ; k=0;
    #6 j=0; k=1;
    #6 j=1 ; k=1;
    #6 j=1 ; k=0;
    #5 $finish;
  end
  initial begin
    $dumpfile("jk_flip.vcd");
    $dumpvars(1,tb);
  end
endmodule
