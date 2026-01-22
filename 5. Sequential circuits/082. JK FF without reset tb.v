module jkff_tb;
  reg clk,j,k;
  wire q;
  jkff j1(clk,j,k,q);
  always #3 clk=~clk;
  initial begin
    $monitor("%t:clk=%0d,j=%0d,k=%0d,q=%0d",$time,clk,j,k,q);
    clk=0;
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
