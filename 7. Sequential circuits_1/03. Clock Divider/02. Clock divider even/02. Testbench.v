module tb();
  reg clk,rst;
  wire clk_o;
  even_clk_div cd(.clk(clk),.rst(rst),.clk_out(clk_o));
  initial begin
    clk=0;
    forever #2 clk=~clk;
  end
  initial begin
    $monitor("Clk_in=%b\t clk_out=%b",clk,clk_o);
    $dumpfile("Even_clk.vcd");
    $dumpvars(0,tb);
    rst=1;
    #15 rst=0;
    #100 $finish;
  end
endmodule
