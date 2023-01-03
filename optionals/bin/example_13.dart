void main(List<String> args) {
  ///* Default Value
  print(fullName(null, null));
  print(fullName('John', null));
  print(fullName(null, 'Snow'));
  print(fullName('John', 'Snow'));
}

String fullName(
  String? firstName,
  String? lastName,
) {
  return '${firstName.orDefault} ${lastName.orDefault}';
}

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return 'X' as T;
      case bool:
        return false as T;
      default:
        throw Exception('No default value for type $T');
    }
  }
}
