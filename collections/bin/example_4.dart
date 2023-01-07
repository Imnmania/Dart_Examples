///* ----
///* Maps
///* ----

void main(List<String> args) {
  /// declaring a map
  final info = {
    'name': 'Foo',
    'age': 10,
  };
  print(info);
  print(info['name']);
  print(info['age']);
  print('----------------');

  /// reading keys and values individually
  print(info.keys);
  print(info.values);
  print('----------------');

  /// insert if not exists
  info.putIfAbsent('height', () => 180);
  print(info);
  info.putIfAbsent('height', () => 200);
  print(info);
  print('----------------');

  /// insert or replace
  info['height'] = 190;
  print(info);
  print('----------------');

  /// loop over entries
  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('----------------');

  /// search keys
  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not found');
  }
  print('----------------');

  /// printing a non existing key
  print(info['weight']);
  print('----------------');

  /// keys of other datatypes
  final mapWithIntKeys = {
    10: 20,
    30: 50,
  };
  print(mapWithIntKeys);
  print(mapWithIntKeys[30]);
  print('----------------');
}
