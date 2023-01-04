void main(List<String> args) {
  ///* ----------------------------------------
  ///* Lazy initialization to a function result
  ///* ----------------------------------------

  print('Before');
  late String name = provideName();
  print('After');
  print(name);
}

String provideName() {
  print('Function is called');
  return 'Foo';
}
