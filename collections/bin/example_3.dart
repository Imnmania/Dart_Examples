///* ----------------------
///* Hash code and equality
///* ----------------------

void main(List<String> args) {
  final p1 = Person(name: 'Foo', age: 10);
  final p2 = Person(name: 'Foo', age: 10);

  print(p1.hashCode);
  print(p2.hashCode);

  final persons = {p1, p2};
  print(persons);
  print('--------------');

  final d1 = Dog(name: 'Foo', age: 10);
  print(d1.hashCode);
  final beings = {p1, p2, d1};
  print(beings);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Person && name == other.name && age == other.age;
  }
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return 'Dog(name: $name, age: $age)';
  }

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Dog && name == other.name && age == other.age;
  }
}
