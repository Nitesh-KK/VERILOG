module mod6_tb();
  reg clk,rst;
  wire [2:0]q;
  mod6 m1(.clk(clk),.rst(rst),.q(q));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $dumpfile("mod6.vcd");
    $dumpvars(0,mod6_tb);
	rst=1;
	#10 rst=0;
	#100;
	$finish;
  end
  always @(posedge clk) begin
    $display("Reset=%b\t q=%d",rst,q);
  end
endmodule 
/*
OUTPUT:
Reset=1	 q=0
Reset=0	 q=1
Reset=0	 q=2
Reset=0	 q=3
Reset=0	 q=4
Reset=0	 q=5
Reset=0	 q=0
Reset=0	 q=1
Reset=0	 q=2
Reset=0	 q=3
Reset=0	 q=4
*/
