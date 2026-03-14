module tb();
  reg clk,rst;
  wire [3:0]qout;
  sync_down sd(.clk(clk),.rst(rst),.q(qout));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $monitor("Reset=%b\t Q=%0d",rst,qout);
    $dumpfile("Sync_down.vcd");
    $dumpvars(0,tb);
    rst=1;
    #15 rst=0;
    #150 $finish;
  end
endmodule
/*
OUTPUT:
Reset=1	 Q=x
Reset=1	 Q=15
Reset=0	 Q=14
Reset=0	 Q=13
Reset=0	 Q=12
Reset=0	 Q=11
Reset=0	 Q=10
Reset=0	 Q=9
Reset=0	 Q=8
Reset=0	 Q=7
Reset=0	 Q=6
Reset=0	 Q=5
Reset=0	 Q=4
Reset=0	 Q=3
Reset=0	 Q=2
Reset=0	 Q=1
Reset=0	 Q=0
*/
