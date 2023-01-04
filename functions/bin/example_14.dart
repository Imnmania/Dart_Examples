///* ------------------
///* The return keyword
///* ------------------

void main(List<String> args) {
  print(add());
  print(add(1, 2));
  print(add(10));
}

int add([
  int a = 1,
  int b = 3,
]) {
  return a + b;
}
