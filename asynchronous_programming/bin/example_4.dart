///* ------
///* Stream
///* ------

void main(List<String> args) async {
  await for (final value in getNumbers()) {
    print(value);
  }
  print('-----------------');

  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (ex) {
    print(ex);
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

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 300));
  yield 'John';
  throw Exception('Something went wrong!');
  // yield 'Doe'; //! Dead code
}
