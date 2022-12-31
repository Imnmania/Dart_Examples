void main(List<String> args) {
  ///* -----------------------
  ///* Variable
  ///* -----------------------

  /// Allows re-assign and mutation
  var address = '321 street';
  print(address);

  address = '123 street';
  print(address);

  address = address.replaceAll('e', 'haha');
  print(address);
}
