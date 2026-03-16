module tb();
  reg mode,clk,rst;
  wire [3:0] qout;
  sync_updown su(.mode(mode),.clk(clk),.rst(rst),.q(qout));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $monitor("Reset=%b\t Mode=%b\t Q=%0d",rst,mode,qout);
    $dumpfile("Sync_updown.vcd");
    $dumpvars(0,tb);
    rst=1;
    mode=1;
    #10 rst=0;
    #100 mode=0;
    #100 $finish;
  end
endmodule
/*
OUTPUT:
Reset=1	 Mode=1	 Q=x
Reset=1	 Mode=1	 Q=0
Reset=0	 Mode=1	 Q=0
Reset=0	 Mode=1	 Q=1
Reset=0	 Mode=1	 Q=2
Reset=0	 Mode=1	 Q=3
Reset=0	 Mode=1	 Q=4
Reset=0	 Mode=1	 Q=5
Reset=0	 Mode=1	 Q=6
Reset=0	 Mode=1	 Q=7
Reset=0	 Mode=1	 Q=8
Reset=0	 Mode=1	 Q=9
Reset=0	 Mode=1	 Q=10
Reset=0	 Mode=0	 Q=10
Reset=0	 Mode=0	 Q=9
Reset=0	 Mode=0	 Q=8
Reset=0	 Mode=0	 Q=7
Reset=0	 Mode=0	 Q=6
Reset=0	 Mode=0	 Q=5
Reset=0	 Mode=0	 Q=4
Reset=0	 Mode=0	 Q=3
Reset=0	 Mode=0	 Q=2
Reset=0	 Mode=0	 Q=1
Reset=0	 Mode=0	 Q=0
*/
