///* ----------------------------
///* Ordering of named parameters
///* ----------------------------

void main(List<String> args) {
  /// ordering doesn't matter
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'John');
  describePerson(name: 'Kon', age: 23);
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age years old');
}
