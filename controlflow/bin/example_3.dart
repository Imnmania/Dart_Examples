///* ----------------
///* Modern For loops
///* ----------------

void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (final name in names) {
    print(name);
  }

  print('-------------');

  for (final name in names) {
    if (name.startsWith('B')) {
      /// continue the loop
      continue;
    }
    print(name);
  }

  print('-------------');

  for (final name in names) {
    if (name == 'Baz') {
      /// break the loop
      break;
    }
    print(name);
  }

  print('-------------');

  /// reverse loop
  for (final name in names.reversed) {
    print(name);
  }

  print('-------------');

  for (var i = 0; i < 10; i++) {
    print(i);
  }

  print('-------------');

  /// range loop
  for (final value in Iterable.generate(20)) {
    print(value);
  }
}
