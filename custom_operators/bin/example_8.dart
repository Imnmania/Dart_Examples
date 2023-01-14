///* ------------------------------
///* Operators on Class Definitions
///* ------------------------------

void main(List<String> args) {
  final meThisYear = Person(age: 27);
  print(meThisYear);

  final meNextYear = meThisYear + 1;
  print(meNextYear);
}

class Person {
  final int age;

  const Person({
    required this.age,
  });

  @override
  String toString() {
    return 'Person (age = $age)';
  }

  Person operator +(int age) {
    return Person(age: this.age + age);
  }
}
