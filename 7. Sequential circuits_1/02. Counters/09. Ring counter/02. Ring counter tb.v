module tb();
  reg clk,rst;
  wire [3:0] qout;
  ring r1(.clk(clk),.rst(rst),.q(qout));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $monitor("Reset=%b\t Q=%b",rst,qout);
    $dumpfile("Ring.vcd");
    $dumpvars(0,tb);
    rst=1;
    #15 rst=0;
    #100 $finish;
  end
endmodule
/*
OUTPUT:
Reset=1	 Q=xxxx
Reset=1	 Q=1000
Reset=0	 Q=0100
Reset=0	 Q=0010
Reset=0	 Q=0001
Reset=0	 Q=1000
Reset=0	 Q=0100
Reset=0	 Q=0010
Reset=0	 Q=0001
Reset=0	 Q=1000
Reset=0	 Q=0100
Reset=0	 Q=0010
*/
