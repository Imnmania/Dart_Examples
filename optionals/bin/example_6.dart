void main(List<String> args) {
  /* List<String?>? names;
  names?.add('foo');
  names?.add(null);
  print(names); */

  /* List<String?>? names = [];
  names.add('foo');
  names.add(null);
  print(names); */

  /// use ? operator if list isn't initialized
  List<String?>? names;
  names?.add('foo');
  names?.add(null);
  print(names);
  final first = names?.first;
  print(first ?? 'No first element');

  /// no need to use ? operator if list is already initialized
  names = [];
  names.add('Baz');
  names.add(null);
  print(names);
}
