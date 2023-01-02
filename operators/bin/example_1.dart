void main(List<String> args) {
  const age1 = 64;
  const age2 = 30;
  print(age1 + age2);
  print(age1 + age2 + 30);
  print(age1 - age2);
  print(age1 * age2);

  /// division makes the output to double
  /// no matter the inputs
  print(age1 / age2);

  /// truncating division operator
  /// the output get converted to integer
  const intDivided = age1 ~/ age2;
  print(intDivided);
}
