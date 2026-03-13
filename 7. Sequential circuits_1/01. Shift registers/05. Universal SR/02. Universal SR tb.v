module tb();
  reg clk_tb,rst_tb,sl_tb,sr_tb;
  reg [3:0] din;
  reg [1:0] s;
  wire [3:0] d;
  usr u(.clk(clk_tb),.rst(rst_tb),.data(din),.sel(s),.dout(d),.sl(sl_tb),.sr(sr_tb));
  initial clk_tb=0;
  always #5 clk_tb=~clk_tb;
  initial begin
    $dumpfile("USR.vcd");
    $dumpvars(0,tb);
    rst_tb=1;
    #4 rst_tb=0;
    s=2'b11; din=4'b1011;   
    #4 s=2'b01; sr_tb=0;      
    #4 s=2'b10; sl_tb=1;       
    #4 s=2'b00;             
    #10 $finish;
  end
endmodule
