///* -------------
///* Stream.reduce
///* -------------

void main(List<String> args) async {
  /* int sum = 0;
  await for (final age in getAllAges()) {
    sum += age;
  }
  print(sum); */

  final sum = await getAllAges().reduce((lhs, rhs) => lhs + rhs);
  print(sum);
}

Stream<int> getAllAges() async* {
  yield 10;
  yield 10;
  yield 10;
  yield 10;
  yield 10;
}
