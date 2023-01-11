import 'package:uuid/uuid.dart';

///* --------------------
///* Mixins with Equality
///* --------------------

void main(List<String> args) {
  final uuid1 = Uuid().v4();
  final uuid2 = Uuid().v4();

  final person1 = Person(id: uuid1, name: 'Foo', age: 20);
  final person1Again = Person(id: uuid1, name: 'foo', age: 50);

  print(person1 == person1Again);
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is HasIdentifier &&
            runtimeType == other.runtimeType &&
            id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}

class Person with HasIdentifier {
  @override
  final String id;
  final String name;
  final int age;

  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
