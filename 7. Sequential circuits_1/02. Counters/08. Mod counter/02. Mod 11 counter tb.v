module tb();
  reg rst,clk;
  wire [3:0] qout;
  mod11 m1(.rst(rst),.clk(clk),.q(qout));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $monitor("Reset=%b\t Q=%0d",rst,qout);
    $dumpfile("Mod11.vcd");
    $dumpvars(0,tb);
    rst=1;
    #10 rst=0;
    #150 $finish;
  end
endmodule
/*
OUTPUT:
Reset=1	 Q=x
Reset=1	 Q=0
Reset=0	 Q=0
Reset=0	 Q=1
Reset=0	 Q=2
Reset=0	 Q=3
Reset=0	 Q=4
Reset=0	 Q=5
Reset=0	 Q=6
Reset=0	 Q=7
Reset=0	 Q=8
Reset=0	 Q=9
Reset=0	 Q=10
Reset=0	 Q=0
Reset=0	 Q=1
Reset=0	 Q=2
Reset=0	 Q=3
Reset=0	 Q=4
*/
