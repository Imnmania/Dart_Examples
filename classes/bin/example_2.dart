///* ------------
///* Constructors
///* ------------

void main(List<String> args) {
  const p1 = Person('Bob', 10);
  print(p1.name);
  print(p1.age);
  print('--------------');

  const p2 = Person.foo();
  print(p2.name);
  print(p2.age);
  print('--------------');

  const p3 = Person.bar(123);
  print(p3.name);
  print(p3.age);
  print('--------------');

  const p4 = Person.other(age: 90);
  print(p4.name);
  print(p4.age);
}

class Person {
  final String name;
  final int age;

  /// constructor that takes name and age positional parameters
  const Person(
    this.name,
    this.age,
  );

  /// constructor that creates an instance with fixed name 'Foo' and age 20
  const Person.foo()
      : name = 'Foo',
        age = 20;

  /// constructor that creates an instance with fixed name 'Bar'
  /// and takes age as a parameter
  const Person.bar(
    this.age,
  ) : name = 'Bar';

  /// constructor that takes optional name and age, if name is not passed or it
  /// is null then put 'Baz' as name and if age not given, use 20 for age
  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Baz',
        age = age ?? 20;
}
