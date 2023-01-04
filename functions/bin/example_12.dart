///* ------------------------------
///* Optional positional parameters
///? Can have default values
///* ------------------------------

void main(List<String> args) {
  makeUpperCase();
  makeUpperCase(null);
  makeUpperCase('Foo');
  makeUpperCase('Foo', 'Goop');
  makeUpperCase(null, 'Soop');
}

void makeUpperCase([
  String? name,
  String lastName = 'Bar',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
