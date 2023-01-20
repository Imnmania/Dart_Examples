///* -------------------------------
///* Stream.asyncMap and Fold
///? transforms stream into a future
///* -------------------------------

void main(List<String> args) async {
  final result = await getNames()
      .asyncMap(
    (event) => extractCharacters(event),
  )
      .fold('', (previous, element) {
    final elements = element.join(' ');
    return '$previous $elements ';
  });

  print(result);
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Bob';
}

Future<List<String>> extractCharacters(String fromString) async {
  final characters = <String>[];
  for (final character in fromString.split('')) {
    await Future.delayed(const Duration(milliseconds: 100));
    characters.add(character);
  }
  return characters;
}
