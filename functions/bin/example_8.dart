///* -------------------------
///* Required named parameter
///* -------------------------

void main(List<String> args) {
  doSomethingWith(name: 'GG');
}

void doSomethingWith({
  required String name,
}) {
  print('Hello, $name');
}
