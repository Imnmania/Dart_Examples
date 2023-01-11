/// -----------------------------
///* Mixins & Function Parameters
/// -----------------------------

void main(List<String> args) {
  final johnDoe = Person(
    firstName: 'John',
    lastName: 'Doe',
  );
  print(johnDoe.fullName);

  /// since Person class conforms to HasFullName mixin, it can be passed
  /// as HasFullName datatype in getFullName function
  print(getFullName(johnDoe));
}

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  /* @override
  String get firstName => throw UnimplementedError();

  @override
  String get lastName => throw UnimplementedError(); */

  @override
  final String firstName;

  @override
  final String lastName;

  Person({
    required this.firstName,
    required this.lastName,
  });
}

/// mixin as a datatype
String getFullName(HasFullName obj) => obj.fullName;
