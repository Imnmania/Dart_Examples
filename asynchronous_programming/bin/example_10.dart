import 'dart:async';

///* -------------------
///* Stream Transformers
///* -------------------

void main(List<String> args) async {
  /* await for (final name in names) {
    print(name.toUpperCase());
  } */

  await for (final name in names.map((event) => event.toUpperCase())) {
    print(name);
  }
  print('--------------------');

  await for (final name in names.capitalized) {
    print(name);
  }
  print('--------------------');

  await for (final name in names.capitalizedUsingMap) {
    print(name);
  }
}

Stream<String> names = Stream.fromIterable(
  [
    'Seth',
    'Kathy',
    'Lars',
  ],
);

/// extend to [StreamTransformer] to make a custom transformer of streams
class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (value) => value.toUpperCase(),
    );
  }
}

extension on Stream<String> {
  Stream<String> get capitalized => transform(
        ToUpperCase(),
      );

  Stream<String> get capitalizedUsingMap => map(
        (event) => event.toUpperCase(),
      );
}
