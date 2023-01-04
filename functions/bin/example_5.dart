///* ----------------
///* Named parameters
///* ----------------

void main(List<String> args) {
  sayHelloTo();
  sayHelloTo(name: 'Bob');
}

void sayHelloTo({
  String? name,
}) {
  print('Hello $name');
}
