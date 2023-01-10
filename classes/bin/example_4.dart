///* ------------------
///* Getters in Classes
///* ------------------

void main(List<String> args) {
  final p1 = Person(
    firstName: 'Foo',
    lastName: 'Bar',
  );
  print(p1.fullName);
}

/* class Person {
  final String firstName;
  final String lastName;

  final String fullName;

  Person({
    required this.firstName,
    required this.lastName,
  }) : fullName = '$firstName $lastName';
} */

class Person {
  final String firstName;
  final String lastName;

  String get fullName => '$firstName $lastName';

  Person({
    required this.firstName,
    required this.lastName,
  });
}
