void main(List<String> args) {
  ///* Flat Map
  String? firstName = 'John';
  String? lastName = 'Doe';

  final fullName = firstName.flatMap(
        (f) => lastName.flatMap(
          (l) => '$f $l',
        ),
      ) ??
      'Either first or last name is null';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R Function(T) callBack,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callBack(shadow);
    }
  }
}
