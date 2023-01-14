///* ----------------
///* Extending String
///* ----------------

void main(List<String> args) {
  /* final value = 20;
  print(20.timesFour); */

  print('Hello World!');
  print('Hello World!'.reversed);
}

/* extension on int {
  int get timesFour => this * 4;
} */

extension on String {
  String get reversed {
    return split('').reversed.join();
  }
}
