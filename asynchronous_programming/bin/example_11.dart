///* ------------------------------
///* Stream.toList
///? creates a future from streams
///? waits for the stream to finish
///* ------------------------------

void main(List<String> args) async {
  final allNames = await getNames().toList();
  allNames.forEach(print);
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Peter';
  yield 'Paul';
}
