///* --------------------
///* Factory Constructors
///? Can create instances of their sub-classes
///* --------------------

void main(List<String> args) {
  final myCar = Car();
  print(myCar);

  final v2 = Vehicle.car();
  print(v2);

  final v3 = Vehicle.truck();
  print(v3);
}

class Vehicle {
  const Vehicle();

  /// returning subclass from parent class constructor
  factory Vehicle.car() {
    return Car();
  }

  factory Vehicle.truck() {
    return Truck();
  }

  @override
  String toString() {
    return 'Vehicle of type $runtimeType';
  }
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
