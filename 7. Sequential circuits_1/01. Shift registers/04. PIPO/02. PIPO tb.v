module pipo_tb();
  reg rst_tb,clk_tb;
  reg [3:0] pin_tb;
  wire [3:0]po;
  pipo eg(.rst(rst_tb),.clk(clk_tb),.pin(pin_tb),.pout(po));
  initial clk_tb=0;
  always #2 clk_tb=~clk_tb;
  initial begin
    $dumpfile("PIPO_waves.vcd");
    $dumpvars(0,pipo_tb);
    rst_tb = 1;
    pin_tb = 4'b0000;
    #5 rst_tb = 0;
    #4 pin_tb = 4'b1010;
    #4 pin_tb = 4'b0111;
    #4 pin_tb = 4'b1100;
    #10 $finish;
  end
endmodule
