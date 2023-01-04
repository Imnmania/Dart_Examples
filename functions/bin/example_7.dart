///* -------------------------------------------------
///* Non-optional named parameters with default values
///* -------------------------------------------------

void main(List<String> args) {
  doSomeThingWith();
  doSomeThingWith(name: 'Foo');
  // doSomeThingWith(name: null);
}

void doSomeThingWith({
  String name = 'Bar',
}) {
  print('Hello, $name');
}
