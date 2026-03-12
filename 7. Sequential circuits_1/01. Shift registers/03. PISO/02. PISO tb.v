module piso_tb();
  reg rst_tb,clk_tb,load_tb;
  reg [3:0] pin_tb;
  wire so;
  piso eg(.rst(rst_tb),.clk(clk_tb),.load(load_tb),.pin(pin_tb),.sout(so));
  initial clk_tb=0;
  always #2 clk_tb=~clk_tb;
  initial begin
    $dumpfile("PISO_waves.vcd");
    $dumpvars(0,piso_tb);
    rst_tb = 1;
    load_tb = 0;
    pin_tb = 4'd11;
    #5 rst_tb = 0;
    #4 load_tb = 1;  
    #4 load_tb = 0;      
    #20 $finish;
  end
endmodule
