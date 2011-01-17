module TOP (in_a, in_b, out_1);
  input in_a, in_b;
  output out_1;
  wire   w_1;

AND2 u1 (.Y(w_1), .A(in_a), .B(in_b));
AND2 u2 (.Y(out_1), .A(w_1), .B(in_b));
endmodule

