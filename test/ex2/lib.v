module NAND2(Y, A, B);
  input A, B;
  output Y;
  nand    (Y, A, B);
endmodule
module OR2(Y, A, B);
  input A, B;
  output Y;
  or    (Y, A, B);
endmodule
module AND2(Y, A, B);
  input A, B;
  output Y;
  and    (Y, A, B);
endmodule
module NOT1(Y, A);
  input A;
  output Y;
  not    (Y, A);
endmodule

