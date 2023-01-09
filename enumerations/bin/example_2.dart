///* ---------------------
///* Enhanced Enumerations
///* ---------------------

void main(List<String> args) {
  final foo = Person(name: 'Foo', car: Car.teslaModelX);
  print(foo);

  switch (foo.car) {
    case Car.teslaModelX:
      print('Foo has a tesla model x');
      break;
    case Car.teslaModelY:
      print('Foo has a tesla model y');
      break;
  }
}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });
}

class Person {
  final String name;
  final Car car;

  Person({
    required this.name,
    required this.car,
  });

  @override
  String toString() {
    return 'Person(name: $name, car: ${car.name})';
  }
}
