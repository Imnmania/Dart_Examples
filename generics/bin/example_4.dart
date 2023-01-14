///* --------------------------------------
///* Unconstrained Generic Type Definitions
///* --------------------------------------

void main(List<String> args) {
  const one = KeyValue(1, 2);
  print(one);

  const two = KeyValue(1, 1.2);
  print(two);

  const three = KeyValue(1, 'Foo');
  print(three);

  /// specifying the type here causes dart to make the types to act as
  /// dynamic/unconstrained
  const KeyValue four = KeyValue(1, 4);
  print(four);
}

typedef KeyValue<K, V> = MapEntry<K, V>;
