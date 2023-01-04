///* -------------------------------
///* Mixing various parameter styles
///* -------------------------------

void main(List<String> args) {
  describeFully('Foo');
  describeFully('John', lastName: 'Wick');
}

void describeFully(
  String firstName, {
  String? lastName = 'Bar',
}) {
  print('Hello $firstName $lastName');
}
