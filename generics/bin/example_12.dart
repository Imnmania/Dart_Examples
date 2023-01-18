///* ------------------------
///* Generic Class Properties
///* ------------------------

void main(List<String> args) {
  final p1 = Person(age: 13.3);
  print(p1.ageRounded);
}

class Person<T extends num> {
  final T age;

  const Person({
    required this.age,
  });

  int get ageRounded => age.round();
}
