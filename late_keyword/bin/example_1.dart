late String name;

void main(List<String> args) {
  ///* Lazy initializations and errors
  try {
    print(name);
  } catch (ex) {
    print(ex);
  }

  name = 'Foo Bar';
  print(name);
}
