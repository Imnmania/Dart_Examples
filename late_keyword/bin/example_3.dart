void main(List<String> args) {
  ///* -------------------------
  ///* Late variables in classes
  ///* -------------------------

  final person = Person();
  print(person.age);
  // print(person.description);
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({
    this.age = 18,
  }) {
    print('Constructor is called');
  }

  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return 'Foo Bar';
  }
}
