module fa(input a,b,cin,output sum,carry);
  assign {carry,sum}=a+b+cin;
endmodule

module add_sub(input [3:0] a,b,input ctrl,output [3:0] sum,carry);
  reg [3:0] bc;
  assign bc[0]=b[0]^ctrl;
  fa f1(a[0],bc[0],ctrl,sum[0],carry[0]);
  genvar i;
  generate
    for(i=1;i<4;i++) begin
      assign bc[i]=b[i]^ctrl;
      fa fi(a[i],bc[i],carry[i-1],sum[i],carry[i]);
    end
  endgenerate
endmodule
