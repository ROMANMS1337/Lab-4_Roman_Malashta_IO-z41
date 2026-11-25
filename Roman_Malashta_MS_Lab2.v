module Roman_Malashta_MS_Lab2(x3, x2, x1, f_a, f_b);
  input  x3, x2, x1;
  output f_a, f_b;

  wire n3, n2, t1, t2, t3, t4;
  assign n3 = ~(x3 & x3);
  assign n2 = ~(x2 & x2);
  assign t1 = ~(n3 & n2 & x1);
  assign t2 = ~(n3 & x2 & x1);
  assign t3 = ~(x3 & n2 & x1);
  assign t4 = ~(x3 & x2 & x1);
  assign f_a = ~(t1 & t2 & t3 & t4);

  wire m;
  assign m   = ~(x1 & x1);
  assign f_b = ~(m & m);
endmodule
