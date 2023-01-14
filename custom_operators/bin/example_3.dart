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
    final thisShadow = this;

    if (this != null && other == null) {
      return this as T;
    } else if (this == null && other != null) {
      return other;
    } else if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    } else {
      return 0 as T;
    }
  }
}
