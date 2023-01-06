///* -------
///* Lists
///* -------

void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  /// print in asc order
  for (final name in names) {
    print(name);
  }
  print('------------------');

  /// print in desc order
  for (final name in names.reversed) {
    print(name);
  }
  print('------------------');

  /// search items called 'Bar'
  if (names.contains('Bar')) {
    print('Bar is in the list');
  }
  print('------------------');

  /// print items whose name starts with 'B'
  for (final name in names.where((name) => name.startsWith('B'))) {
    print(name);
  }
  /* names.where(stringStartsWithLetterB); */
  print('------------------');

  /// subscript
  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);
  print('------------------');

  try {
    print(names[4]);
  } catch (ex) {
    print(ex);
  }
  print('------------------');

  /// sub ranges
  names.sublist(1).forEach(print);
  print('------------------');
  names.sublist(1, 3).forEach(print);
  print('------------------');

  /// list is internally mutable
  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);
  print('------------------');

  /// equality
  /// usually needs to be in the same order
  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];
  if (names1 == names2) {
    print('names1 and names2 are  equal');
  } else {
    print('names1 and names2 are not equal');
  }
  print('------------------');

  /// map lists to change type or format
  names.map((e) => e.toUpperCase()).forEach(print);
  print('------------------');

  /// add/ fold
  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      previousValue,
      thisValue,
    ) =>
        previousValue + thisValue,
  );
  print(sum);
  print('------------------');

  final totalLength =
      names.fold(0, (totalLength, str) => totalLength + str.length);
  print(totalLength);
  print('------------------');

  final result =
      names.fold('', (result, str) => '$result ${str.toUpperCase()}');
  print(result);
}

/* bool stringStartsWithLetterB(String value) {
  return value.startsWith('B');
} */
