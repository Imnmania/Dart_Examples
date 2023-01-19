///* ---------------
///* Throwing Errors
///* ---------------

void main(List<String> args) {
  final p1 = Person(age: 10);
  print(p1);

  try {
    /// Errors are not created to be caught, so if you get an error make sure
    /// that you change your program in order to avoid that error.
    /// Exceptions however are meant to be caught
    p1.age = -1;
  } catch (e) {
    print(e);
  } finally {
    print(p1);
  }
}

class Person {
  int _age;

  Person({
    required int age,
  }) : _age = age;

  int get age => _age;

  set age(int value) {
    if (value < 0) {
      throw ArgumentError('Age cannot be negative');
    }
    _age = value;
  }

  @override
  String toString() {
    return 'Person with age $_age';
  }
}
