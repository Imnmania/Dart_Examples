///* ------------------
///* Extension Override
///* ------------------

void main(List<String> args) {
  final jack = Person(
    name: 'Jack',
    age: 20,
  );

  print(ShortDescription(jack).description);
  print(LongDescription(jack).description);
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  /* @override
  String toString() {
    return 'Person( name = $name, age = $age )';
  } */
}

/// Short description of a person
extension ShortDescription on Person {
  String get description => '$name ($age)';
}

/// Long description of a person
extension LongDescription on Person {
  String get description => '$name is $age years old';
}
