///* ----------------------------------------
///* Subtracting a String from another String
///* ----------------------------------------

void main(List<String> args) {
  print('Foo Bar' - 'Bar');
  print('Foo Bar' - 'Foo');
}

extension Remove on String {
  String operator -(String other) {
    return replaceAll(other, '');
  }
}
