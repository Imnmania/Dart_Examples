///* -------------
///* Matching Type
///* -------------

void main(List<String> args) {
  print(doTypesMatch(1, 2));
  print(doTypesMatch(1, 2.1));
  print(doTypesMatch('Hi', 'Bye'));
  print(doTypesMatch('Hi', true));
  print(doTypesMatch(false, true));
}

/* bool doTypesMatch(Object a, Object b) {
  return a.runtimeType == b.runtimeType;
} */

bool doTypesMatch<L, R>(L a, R b) {
  return L == R;
}
