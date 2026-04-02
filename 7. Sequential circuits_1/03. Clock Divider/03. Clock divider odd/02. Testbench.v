module tb();
  reg clk_i,rst;
  wire clk_o;
  clk_div cd(.clk_in(clk_i),.rst(rst),.clk_out(clk_o));
  initial begin
    clk_i=0;
    forever #2 clk_i=~clk_i;
  end
  initial begin
    $monitor("Clk in =%b\t Reset=%b\t Clk out=%b\t",clk_i,rst,clk_o);
    $dumpfile("Clk_div_odd.vcd");
    $dumpvars(0,tb);
    rst=1;
    #15 rst=0;
    #150 $finish;
  end
endmodule
