module tb;
  reg [7:0]d;
  wire[2:0]y;
  prior_enc p1(d,y);
  initial begin
    $monitor("%t:d=%b,y=%b",$time,d,y);
    repeat(5)begin
      d=$random;#3;
    end
  end
endmodule
    
