void main(List<String> args) {
  /// optional values are by default null
  String? a;

  /// null aware compound assignment operator
  /// assign the value of the right, only if the variable is null
  a = 'Baz';
  a ??= 'Niloy';
  print(a);
}

void doSomething(String? one, String? two) {
  one ??= two;
}
