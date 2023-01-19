///* ------------------------
///* Custom Throws Annotation
///* ------------------------

void main(List<String> args) {
  try {
    print('Dog aged 11 is going to run...');
    Dog(age: 11, isTired: false).run();
  } catch (e) {
    print(e);
  }

  print('------------------');

  try {
    print('A tired dog is going to run...');
    Dog(age: 2, isTired: true).run();
  } catch (e) {
    print(e);
  }
}

class Throws<T> {
  final List<T> exceptions;

  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;

  const Animal({
    required this.age,
  });

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;

  const Dog({
    required this.isTired,
    required super.age,
  });

  /// This function throws the following exceptions:
  /// - [DogIsTooOldException] if the dog is older than 10 years old
  /// - [DogIsTiredException] if the dog is tired
  @Throws([DogIsTooOldException, DogIsTiredException])
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTiredException();
    } else {
      print('Dog is running...');
    }
    super.run();
  }
}
