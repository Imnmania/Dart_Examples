void main(List<String> args) {
  print(getFullName(null, null));
  print(getFullName('John', null));
  print(getFullName(null, 'John'));
  print(getFullName('John', 'Snow'));

  /* List<String> test = ['A', 'B', 'C'];
  print(test.join('+')); */
}

String getFullName(
  String? firstName,
  String? lastName,
) {
  return withAll([firstName, lastName], (names) => names.join(' ')) ?? 'Empty';
}

///* If any item from list is null, then return null.
///* If none of the items are null, then return the list.
T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callBack,
) {
  return optionals.any((element) => element == null)
      ? null
      : callBack(optionals.cast<T>());
}
