///* ----------------------------------
///* Static Properties & Static Methods
///* ----------------------------------

void main(List<String> args) {
  Person.name = 'Foo';
  print(Person.name);

  Person.name = 'Bar';
  print(Person.name);
  print('--------------');

  print(Car.carsInstantiated);
  Car(name: 'A Car');
  print(Car.carsInstantiated);
  Car(name: 'B Car');
  print(Car.carsInstantiated);
}

class Person {
  static String name = '';
}

///! avoid using static like this
class Car {
  static int _carInstantiated = 0;
  static int get carsInstantiated => _carInstantiated;
  static void _incrementCarsInstantiated() => _carInstantiated++;

  final String name;
  Car({
    required this.name,
  }) {
    _incrementCarsInstantiated();
  }
}
