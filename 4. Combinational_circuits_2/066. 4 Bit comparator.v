module comp(input [3:0]a,b,output reg a_gret_b,a_less_b,a_eq_b);
  always @(*) begin
    a_gret_b=0;a_less_b=0;a_eq_b=0;
    if(a>b) a_gret_b=1'b1;
    else if(b>a) a_less_b=1'b1;
    else a_eq_b=1'b1;
  end
endmodule
