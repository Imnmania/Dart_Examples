///* -------------------------------------------
///* Encapsulation with Unmodifiable Collections
///* -------------------------------------------

import 'package:collection/collection.dart';

void main(List<String> args) {
  final foo = Person(
    name: 'Foo',
    siblings: [
      Person(name: 'Bar'),
    ],
  );

  try {
    foo.siblings?.add(Person(name: 'Baz'));
    print(foo);
  } catch (ex) {
    print(ex);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;

  @override
  String toString() {
    return 'Person(name: $name, siblings: $siblings)';
  }
}
