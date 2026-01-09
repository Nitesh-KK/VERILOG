module mux_4_1(input i0,i1,i2,i3,s1,s2,output y);
  assign y=s1?(s2?i3:i2):(s2?i1:i0);
endmodule
