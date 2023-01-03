void main(List<String> args) {
  String? lastName;
  print(lastName?.length);
  // print(lastName!.length);

  String? nullName;
  String? foo;

  /// if null print Foo
  final bla = nullName ?? foo ?? 'Haha';
  print(bla);
}
