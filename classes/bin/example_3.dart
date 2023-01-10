///* -----------
///* Subclassing
///* -----------

void main(List<String> args) {
  final v1 = Vehicle(10);
  print(v1.toString());

  final v2 = Car();
  print(v2);

  final v3 = Bicycle();
  print(v3);
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() {
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  // Car(super.wheelCount);
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
