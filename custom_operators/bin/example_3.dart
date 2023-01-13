///* ---------------------------------
///* Addition of Two Optional Integers
///* ---------------------------------

void main(List<String> args) {
  int? value1 = 20;
  int? value2 = 30;
  final result = value1 + value2;
}

void func(int? value1, int? value2) {
  final result = (value1 ?? 0) + (value2 ?? 0);
}

extension NullableAdd on num {}
