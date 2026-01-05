module ripple_tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0] sum,carry;
  ripple r1(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  initial begin
    $monitor("time=%0t,a=%d,b=%d,cin=%b,sum=%d,carry=%d",$time,a,b,cin,sum,carry);
      a = 2;b= 4;cin=0;#3
      a = 3;b= 4;cin=15;#3
      a = 4;b= 12;cin=2;
  end
endmodule
