///* -------------------------------
///* Finding Duplicates on Iterables
///* -------------------------------

void main(List<String> args) {
  print([1, 2, 3, 4].containsDuplicateValues);
  print([1, 2, 3, 4, 1].containsDuplicateValues);
  print(['foo', 'bar'].containsDuplicateValues);
  print(['foo', 'bar', 'bar'].containsDuplicateValues);
}

extension on Iterable {
  bool get containsDuplicateValues => toSet().length != length;
}
