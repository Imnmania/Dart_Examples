///* ------------------------------------------
///* Finding and Mapping Keys and Values on Map
///* ------------------------------------------

const myJson = {
  'name': 'Foo Bar',
  'age': 20,
};

void main(List<String> args) {
  final String? ageAsString =
      myJson.find<int>('age', (value) => value.toString());
  print(ageAsString);

  final String helloName =
      myJson.find('name', (String value) => 'Hello $value');
  print(helloName);

  final String? address =
      myJson.find('address', (String value) => 'You live in $value');
  print(address);
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
