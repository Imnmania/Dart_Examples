///* ---------------------
///* Omitting return types
///* ---------------------

void main(List<String> args) {
  print(doNothing());
}

/// not mentioning return type makes the return type dynamic
/// so null will be returned
// doNothing() {}
dynamic doNothing() {}
