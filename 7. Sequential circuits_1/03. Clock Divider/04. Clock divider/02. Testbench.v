module tb();
  reg clk_i,rst;
  wire clk_o;
  clk_div cd(.clk_in(clk_i),.rst(rst),.clk_out(clk_o));
  initial begin
    clk_i=0;
    forever #3 clk_i=~clk_i;
  end
  initial begin
    $monitor ("Clk_in=%b\t rst=%b\t clk_out=%b",clk_i,rst,clk_o);
    $dumpfile("Clk_div.vcd");
    $dumpvars(0,tb);
    rst=1;
    #15 rst=0;
    #100 $finish;
  end
endmodule
