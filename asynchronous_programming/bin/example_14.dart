///* -------------------------------------
///* Another Example of Stream.asyncExpand
///* -------------------------------------

void main(List<String> args) async {
  final result3Times = getNames().asyncExpand(
    (name) => times3(name),
  );

  await for (final name in result3Times) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Bob';
}

Stream<String> times3(String value) {
  return Stream.fromIterable(
    Iterable.generate(
      3,
      (_) => value,
    ),
  );
}
