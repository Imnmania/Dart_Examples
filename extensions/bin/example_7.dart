///* ----------------------
///* Extension on Functions
///* ----------------------
import 'dart:math';

void main(List<String> args) {
  print(add.callWithRandomValues());
}

int add(int a, int b) => a + b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValues() {
    final rnd1 = Random().nextInt(100);
    final rnd2 = Random().nextInt(100);
    return call(rnd1, rnd2);
  }
}
