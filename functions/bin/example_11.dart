///*-----------------------------
///* Positional parameters
///? They are always required
///? Can't specify default values
///*-----------------------------

void main(List<String> args) {
  ///! invalid
  /// sayGoodByeTo();
  /// sayGoodByeTo('Foo');

  /// ? valid
  sayGoodByeTo('Foo', 'Bar');
  sayGoodByeTo('Baz', 'Bar');
  sayGoodByeTo(null, null);
}

void sayGoodByeTo(
  String? person,
  String? toOtherPerson,
) {
  print('Goodbye, $person and $toOtherPerson');
}
