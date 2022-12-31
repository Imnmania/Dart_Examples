void main(List<String> args) {
  /// Datatype is locked
  String name = 'Foo';
  print(name);

  /// Datatype determined at compile time
  var address = '123';
  print(address);

  //! Not allowed to assign if not same data type
  address = name;
  print(address);
}
