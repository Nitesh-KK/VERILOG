module fa(input a,b,cin,output sum,carry)
  assign {carry,sum}=a+b+cin;
endmodule

module ripple_gen(input [3:0]a,b,input cin,output [3:0] sum,carry);
  fa f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(carry[0]));
  genvar i;
  generate
    for(i=1;i<4;i++) begin
      fa f2(.a(a[i]),.b(b[i]),.cin(carry[i-1]),.sum(sum[i]),.carry(carry[i]));
    end
  endgenerate
endmodule
