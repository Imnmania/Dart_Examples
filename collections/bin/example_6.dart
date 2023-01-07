///* --------------------------
///* Mapping Lists to Iterables
///* --------------------------

void main(List<String> args) {
  const names = ['John', 'Jane', 'Jack', 'Jill'];

  /// maps return Iterable types, and Iterable types will only work with
  /// items that it is working with.
  final uppercaseNames = names.map((e) {
    print('Map got called');
    return e.toUpperCase();
  });
  for (final name in uppercaseNames.take(2)) {
    print(name);
  }
}
