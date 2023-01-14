///* -----------------------
///* Custom Operators on Map
///* -----------------------

void main(List<String> args) {
  print(<String, dynamic>{'name': 'Bob'} + <String, dynamic>{'age': 345});
  print(<String, dynamic>{'name': 'Bob', 'age': 42} -
      <String, dynamic>{'age': 42});
  print({'name': 'Bob', 'age': 42} * 3);
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) {
    return {...this, ...other};
  }

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
