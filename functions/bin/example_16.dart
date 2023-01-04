///* ----------------------------------
///* Returning functions from functions
///* ----------------------------------

void main(List<String> args) {
  var a = doSomething(10, 20);
  print(a());

  print(doSomething(1, 1)());
}

int Function() doSomething(
  int lhs,
  int rhs,
) {
  return () => lhs + rhs;
}
