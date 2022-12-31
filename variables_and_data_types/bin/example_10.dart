void main(List<String> args) {
  ///* -----------------------
  ///* Late
  ///* -----------------------

  late final myValue = 10;
  print(myValue);

  /// Only assigns after it's called
  /// after first assign it stores the data like any other variables
  /// won't be called over and over again
  late final yourValue = getValue();
  print('We are here');
  print(yourValue);
  print(yourValue);

  // 10
  // We are here
  // getValue() called
  // 10
}

int getValue() {
  print('getValue() called');
  return 10;
}
