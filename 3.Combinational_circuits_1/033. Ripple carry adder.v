module fa(input a,b,cin,output sum,carry);
  assign {carry,sum}=a+b+cin;
endmodule
module ripple(input [3:0]a,b,input cin,output [3:0]sum,cout);
  fa f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(cout[0]));
  fa f2(.a(a[1]),.b(b[1]),.cin(cout[0]),.sum(sum[1]),.carry(cout[1]));
  fa f3(.a(a[2]),.b(b[2]),.cin(cout[1]),.sum(sum[2]),.carry(cout[2]));
  fa f4(.a(a[3]),.b(b[3]),.cin(cout[2]),.sum(sum[3]),.carry(cout[3]));
endmodule
