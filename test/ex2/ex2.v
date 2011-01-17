module TOP ( A[0], A[1], B[0], B[1], M[0], M[1], M[2] );
  input A[0],A[1];
  input B[0],B[1];
  output M[0],M[1],M[2];
  wire n1, n2, n3, n4, n5, n6, n7, n8;
  AND2 U1 ( .A(n1), .B(B[1]), .Y(M[2]) );
  AND2 U2 ( .A(A[1]), .B(n2), .Y(n1) );
  NAND2 U3 ( .A(n3), .B(n4), .Y(n2) );
  NAND2 U4 ( .A(n5), .B(n6), .Y(M[1]) );
  NAND2 U5 ( .A(n3), .B(n7), .Y(n6) );
  NOT1 U6 ( .A(n8), .Y(n3) );
  NAND2 U7 ( .A(n4), .B(n8), .Y(n5) );
  NAND2 U8 ( .A(B[0]), .B(A[1]), .Y(n8) );
  NOT1 U9 ( .A(n7), .Y(n4) );
  NAND2 U10 ( .A(A[0]), .B(B[1]), .Y(n7) );
  AND2 U11 ( .A(A[0]), .B(B[0]), .Y(M[0]) );
endmodule


