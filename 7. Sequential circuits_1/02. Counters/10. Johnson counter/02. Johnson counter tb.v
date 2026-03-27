module tb();
  reg clk,rst;
  wire [3:0]qout;
  johnson j1(.clk(clk),.rst(rst),.q(qout));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $monitor("Reset=%b\t Q=%b",rst,qout);
    $dumpfile("Johnson.vcd");
    $dumpvars(0,tb);
    rst=1;
    #15 rst=0;
    #100 $finish;
  end
endmodule
/*
OUTPUT:
Reset=1	 Q=xxxx
Reset=1	 Q=0000
Reset=0	 Q=1000
Reset=0	 Q=1100
Reset=0	 Q=1110
Reset=0	 Q=1111
Reset=0	 Q=0111
Reset=0	 Q=0011
Reset=0	 Q=0001
Reset=0	 Q=0000
Reset=0	 Q=1000
Reset=0	 Q=1100
*/
