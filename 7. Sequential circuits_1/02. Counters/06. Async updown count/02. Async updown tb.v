module async_updown_tb();
  reg mode,clk,rst;
  wire [3:0] q,qbar;
  async_updown dut(.mode(mode),.clk(clk),.rst(rst),.q(q),.qbar(qbar));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $dumpfile("async_updown.vcd");
    $dumpvars(0,async_updown_tb);
  	rst=1;
  	mode=1;
  	#5;
  	rst=0;
  	#100;
  	rst=1;
  	mode=0;
  	#5;
  	rst=0;
  	#100;
  	$finish;
  end
  always @(negedge clk) begin
    $display("Mode=%b\t Reset=%b\t Count=%d",mode,rst,q);
  end
endmodule
/*
OUTPUT:
Mode=1	 Reset=0	 Count=15
Mode=1	 Reset=0	 Count=14
Mode=1	 Reset=0	 Count=13
Mode=1	 Reset=0	 Count=12
Mode=1	 Reset=0	 Count=11
Mode=1	 Reset=0	 Count=10
Mode=1	 Reset=0	 Count= 9
Mode=1	 Reset=0	 Count= 8
Mode=1	 Reset=0	 Count= 7
Mode=1	 Reset=0	 Count= 6
Mode=0	 Reset=0	 Count= 0
Mode=0	 Reset=0	 Count= 1
Mode=0	 Reset=0	 Count= 2
Mode=0	 Reset=0	 Count= 3
Mode=0	 Reset=0	 Count= 4
Mode=0	 Reset=0	 Count= 5
Mode=0	 Reset=0	 Count= 6
Mode=0	 Reset=0	 Count= 7
Mode=0	 Reset=0	 Count= 8
Mode=0	 Reset=0	 Count= 9
*/
