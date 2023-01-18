///* -------
///* Rethrow
///* -------

void main(List<String> args) {
  try {
    tryCreatingPerson(age: 20);
    print('--------------');
    tryCreatingPerson(age: -1);
    print('--------------');
    tryCreatingPerson(age: 141);
  } catch (ex, st) {
    print(ex);
    print(st);
  }
}

void tryCreatingPerson({
  int age = 0,
}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException {
    rethrow;
  } catch (ex, st) {
    print(ex);
    print(st);
  }
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(this.age, this.message);

  @override
  String toString() {
    return 'InvalidAgeException, $message, $age';
  }
}

class Person {
  final int age;

  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw InvalidAgeException(age, 'Age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeException(age, 'Age cannot be greater than 140');
    }
  }
}
