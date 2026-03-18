module async_down_count_tb();
  reg clk_tb,rst_tb;
  wire [3:0] qtb;
  async_count_down dut(.clk(clk_tb),.rst(rst_tb),.q(qtb));
initial begin
	clk_tb=0;
	forever #5 clk_tb=~clk_tb;
end
initial begin
  $dumpfile("async_count down.vcd");
	$dumpvars(0);
	rst_tb=1;#15;
	rst_tb=0;
	#250;
	$finish;
end
  always @(posedge clk_tb) begin
    $display("Reset=%b\t q=%d",rst_tb,qtb);
end
endmodule
/*
OUTPUT:
Reset=1	 q= 0
Reset=0	 q= 0
Reset=0	 q=15
Reset=0	 q=14
Reset=0	 q=13
Reset=0	 q=12
Reset=0	 q=11
Reset=0	 q=10
Reset=0	 q= 9
Reset=0	 q= 8
Reset=0	 q= 7
Reset=0	 q= 6
Reset=0	 q= 5
Reset=0	 q= 4
Reset=0	 q= 3
Reset=0	 q= 2
Reset=0	 q= 1
Reset=0	 q= 0
Reset=0	 q=15
Reset=0	 q=14
Reset=0	 q=13
Reset=0	 q=12
Reset=0	 q=11
Reset=0	 q=10
Reset=0	 q= 9
Reset=0	 q= 8
*/
