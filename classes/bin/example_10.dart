///* -----------------------
///* Abstract Classes
///? Blueprint of blueprints
///* -----------------------

void main(List<String> args) {
  const car = Car();
  print(car.kind);
  car.accelerate();
  car.decelerate();

  print('-----------');

  const motorcycle = Motorcycle();
  print(motorcycle.kind);
  motorcycle.accelerate();
  motorcycle.decelerate();
}

abstract class Vehicle {
  final VehicleKind kind;

  const Vehicle({
    required this.kind,
  });

  void accelerate() => print('$kind is accelerating');

  void decelerate() => print('$kind is decelerating');
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
  bicycle,
}

/// with extends, you inherit everything
/// need to call super class
class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

/// with implements, you need to re-implement everything again
/// no need to call super class
class Motorcycle implements Vehicle {
  const Motorcycle();

  @override
  void accelerate() => print('Motorcycle is accelerating');

  @override
  void decelerate() => print('Motorcycle is decelerating');

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}
