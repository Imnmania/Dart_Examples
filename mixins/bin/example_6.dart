///* -------------------
///* Mixins & Reflection
///* -------------------

import 'dart:mirrors';

void main(List<String> args) {
  final person = Person(name: 'name', age: 30);
  print(person.toString());
}

extension Askey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}

mixin HasDecription {
  @override
  String toString() {
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(reflection.type.simpleName);
    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();
    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection
            .getField(
              field.simpleName,
            )
            .reflectee
    }.toString();
    return '$thisType = $properties';
  }
}

class Person with HasDecription {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}
