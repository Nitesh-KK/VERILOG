module sipo_tb();
  reg rst_tb,clk_tb,si;
  wire [3:0]so;
  sipo eg(.rst(rst_tb),.clk(clk_tb),.sin(si),.sout(so));
  initial clk_tb=0;
  always #2 clk_tb=~clk_tb;
  initial begin
    $dumpfile("SIPO_waves.vcd");
    $dumpvars(0,sipo_tb);
    rst_tb = 1;
    si = 0;
    #5 rst_tb = 0;
    #4 si = 1;
    #4 si = 0;
    #4 si = 1;
    #4 si = 1;
    #4 si = 0;
    #4 si = 1;
    #10 $finish;
  end
endmodule
