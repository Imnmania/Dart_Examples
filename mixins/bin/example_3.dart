///* -----------------
///* Mixins with Logic
///* -----------------

void main(List<String> args) {
  final c1 = Cat(age: 2);
  print(c1.age);
  c1.incrementAge();
  print(c1.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age;
  Cat({required this.age});
}
