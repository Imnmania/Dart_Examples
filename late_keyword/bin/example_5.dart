void main(List<String> args) {
  ///* --------------------------------------
  ///* Multiple assignments of late variables
  ///* --------------------------------------

  /* late String name = provideName();
  name = 'Bar Foo';
  print(name); */

  final person = Person();
  person.description = 'Description 1';
  print(person.description);
  person.description = 'Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Dog Description 1';
  print(woof.description);

  try {
    woof.description = 'Dog Description 2';
    print(woof.description);
  } catch (ex) {
    print(ex);
  }
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
