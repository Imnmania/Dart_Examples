void main(List<String> args) {
  ///* -----------------------
  ///* Final
  ///* -----------------------

  final age = 200;
  print(age);

  ///! Not allowed to re-assign
  // age = 30;

  ///? Allowed to modify value
  final age2 = [1, 2, 3];
  age2.remove(2);
  print(age2);
}
