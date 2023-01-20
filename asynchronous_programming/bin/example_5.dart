///* ------------------
///* Stream.asyncExpand
///? create a stream with another stream
///? similar to .then() in future
///* ------------------

void main(List<String> args) async {
  final result = getNames().asyncExpand((name) => getCharacters(name));

  await for (final char in result) {
    print(char);
  }
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(milliseconds: 300),
    );
    yield i;
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 300));
  yield 'John';
  await Future.delayed(const Duration(milliseconds: 300));
  yield 'Doe';
}
