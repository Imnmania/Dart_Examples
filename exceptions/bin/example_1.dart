///* ------------------------------
///* Throwing in Class Constructors
///* ------------------------------

void main(List<String> args) {
  tryCreatingPerson(age: 20);
  print('--------------');
  tryCreatingPerson(age: -1);
  print('--------------');
  tryCreatingPerson(age: 141);
}

void tryCreatingPerson({
  int age = 0,
}) {
  try {
    print(Person(age: age).age);
  } catch (ex) {
    print(ex.runtimeType);
    print(ex);
  }
}

class Person {
  final int age;

  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw Exception('Age must be positve');
    } else if (age > 140) {
      throw 'Age must be less than 140';
    }
  }
}
