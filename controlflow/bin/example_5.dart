///* ----------------
///* Switch Statement
///* ----------------

void main(List<String> args) {
  describe(1);
  describe({});
  describe(1.1);
  describe('value');
  describe([]);
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
      break;
    case double:
      print('This is a double');
      break;
    case bool:
      print('This is a boolean');
      break;
    case String:
      print('This is a String');
      break;
    case Map:
      print('This is a map');
      break;
    default:
      print('Don\'t know the type');
      break;
  }
}
