module siso_tb();
  reg rst_tb,clk_tb,si;
  wire so;
  siso eg(.rst(rst_tb),.clk(clk_tb),.sin(si),.sout(so));
  initial clk_tb=0;
  always #2 clk_tb=~clk_tb;
  initial begin
    $dumpfile("SISO_waves.vcd");
    $dumpvars(0,siso_tb);
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
