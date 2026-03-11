module tb;
  reg [3:0]xs3;
  wire [3:0]bin;
  xs3_to_bin xb(.x(xs3),.b(bin));
  initial begin
    $monitor("excess3=%0d\t binary=%0d",xs3,bin);
    $dumpfile("xs3tobin.vcd");
    $dumpvars();
    xs3=3;
    #2 xs3=4;
    #2 xs3=5;
    #2 xs3=6;
    #2 xs3=7;
    #2 xs3=8;
    #2 xs3=9;
    #2 xs3=10;
    #2 xs3=11;
    #2 xs3=12;
    #2 xs3=13;
    #2 xs3=14;
    #2 $finish;
  end
endmodule 
/*
OUTPUT:
excess3=3	 binary=0
excess3=4	 binary=1
excess3=5	 binary=2
excess3=6	 binary=3
excess3=7	 binary=4
excess3=8	 binary=5
excess3=9	 binary=6
excess3=10	 binary=7
excess3=11	 binary=8
excess3=12	 binary=9
excess3=13	 binary=10
excess3=14	 binary=11
*/
