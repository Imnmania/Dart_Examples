///* ---------------------
///* Iterables
///? lazily evaluated list
///* ---------------------

void main(List<String> args) {
  final iterables = Iterable.generate(20, (index) => getName(index));
  // print(iterables);
  for (final name in iterables.take(2)) {
    print(name);
  }
}

String getName(int i) {
  print('get name got called');
  return 'John$i';
}
