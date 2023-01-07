///* -----
///* Sets
///* -----

import 'package:collection/collection.dart';

void main(List<String> args) {
  /// declaring a set
  final names = {
    'Foo',
    'Bar',
    'Baz',
    'Qux',
  };

  print(names);
  print('---------------');

  /// converting a list to set
  final names2 = [
    'Foo',
    'Bar',
    'Baz',
    'Foo',
  ];
  // print(names2.toSet());
  ///? spread operator unwraps items from list/collection
  final uniqueNames = {...names2};
  print(uniqueNames);
  print('---------------');

  /// searching in sets
  if (names.contains('Foo')) {
    print('Found Foo');
  } else {
    print('Did not find Foo');
  }
  print('---------------');

  /// equality in sets
  final ages1 = {10, 20, 30};
  final ages2 = {10, 20, 30};

  if (ages1 == ages2) {
    print('ages are equal');
  } else {
    print('ages are not equal');
  }
  print('---------------');

  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('---------------');

  final ages3 = {30, 20, 10};
  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
}
