///* ---------------------------------
///* Addition of Two Optional Integers
///* ---------------------------------

void main(List<String> args) {
  int? value1;
  int? value2 = 1;
  print(add(value1, value2));
  print(add(10, 20));
}

int add(int? value1, int? value2) {
  return value1 + value2;
}

extension NullableAdd<T extends num> on T? {
  T operator +(T? other) {
    if (this != null && other == null) {
      return this as T;
    } else if (this == null && other != null) {
      return other;
    } else if (this == null && other == null) {
      return 0 as T;
    } else {
      return this + other as T;
    }
  }
}
