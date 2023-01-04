///* --------------------------------
///* Functions as first class citizen
///* --------------------------------

void main(List<String> args) {
  print(minus());
  print(minus(20, 30));

  print(add());
  print(add(23));

  print(performOperation(10, 10, (a, b) => a + b));
  print(performOperation(10, 10, (a, b) => a - b));

  print(performOperation(10, 15, add));
  print(performOperation(10, 15, minus));
}

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;

int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);
