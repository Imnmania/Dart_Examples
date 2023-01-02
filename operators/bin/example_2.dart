void main(List<String> args) {
  ///* -------------------------------------------------------------------------
  ///* There are 4 types of operators in Dart:-
  ///* 1. Unary Prefix : Operates before one value
  ///* 2. Unary Postfix : Operates after one value
  ///* 3. Binary Infix : Operates between two values, and sits in between them.
  ///* 4. Compound Assignment
  ///* -------------------------------------------------------------------------

  ///? Unary Prefix
  int age = 30;
  print(--age);
  // it returns the age with -1
  // int age2 = --age;
  // print(age);
  // print(age2);
  print(!true);
  print(!false);
  print(++age);

  ///? Unary bitwise complement prefix operator
  print(~1);

  /// it is flipping the binary values of 64bit number
  /// (0000 0000) (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111) (1111 1111) (1111 1111) (1111 1110)

  print(-age);
  print(age);
  print(-(-age));
}
