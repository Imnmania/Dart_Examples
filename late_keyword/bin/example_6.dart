void main(List<String> args) {
  ///* ---------------------------------------------
  ///* Avoiding a common pitfall with late variables
  ///* ---------------------------------------------

  final person = Person();

  ///! Avoid doing this in real projects since it's against
  ///! the recommended guidelines. Instead use nullable values.
  try {
    print(person.fullName);
  } catch (ex) {
    print(ex);
  }

  person.firstName = 'Foo';
  person.lastName = 'Boo';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
