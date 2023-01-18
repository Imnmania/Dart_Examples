///* -------------------------
///* Generic Function Pointers
///* -------------------------

void main(List<String> args) {
  const integers = [100, 5, 2];
  const doubles = [33.3, 3.4, 2.0];

  final result1 = integers.reduce(divide);
  final result2 = doubles.reduce(divide);
  print(result1);
  print(result2);
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  } else {
    return lhs / rhs as T;
  }
}
