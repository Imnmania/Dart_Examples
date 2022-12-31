void main(List<String> args) {
  const thisList1 = [1, 2, 3];
  final thisList2 = thisList1;
  print(thisList1);
  print(thisList2);

  //! not allowed
  // const someList = thisList2;
}
