/// use fswatch to simulate hot reloading in dart project
/// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example_1.dart'

void main(List<String> args) {
  ///* -----------------------
  ///* Constants
  ///* -----------------------

  const name = "foo";
  print(name);

  ///! invalid code
  // name = "hello";
}
