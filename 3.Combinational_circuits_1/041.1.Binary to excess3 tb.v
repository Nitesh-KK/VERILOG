module tb;
  reg [3:0]bin;
  wire [3:0]xs3;
  bin_to_xs3 bx(.b(bin),.x(xs3));
  initial begin
    $monitor("binary=%0d\t excess3=%0d",bin,xs3);
    $dumpfile("Bin2xs3.vcd");
    $dumpvars();
    bin=0;#5;
    bin=1;#5;             
    bin=2;#5;             
    bin=3;#5;             
    bin=4;#5;             
    bin=5;#5;             
    bin=6;#5;             
    bin=7;#5;             
    bin=8;#5;             
    bin=9;#5;             
    bin=10;#5; 
    $finish;
  end
endmodule 
/*
OUTPUT:
binary=0	 excess3=3
binary=1	 excess3=4
binary=2	 excess3=5
binary=3	 excess3=6
binary=4	 excess3=7
binary=5	 excess3=8
binary=6	 excess3=9
binary=7	 excess3=10
binary=8	 excess3=11
binary=9	 excess3=12
binary=10	 excess3=13
*/
