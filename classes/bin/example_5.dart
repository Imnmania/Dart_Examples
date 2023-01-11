///* -------
///* Methods
///? A method is a function that belongs to an instance of a class
///* -------

void main(List<String> args) {
  final myCar = Car();
  print(myCar.speed);

  myCar.speed = 20;
  print(myCar.speed);

  myCar.drive(speed: 60);
  myCar.stop();
}

class Car {
  int speed = 0;

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    print('Stopping...');
    speed = 0;
    print('Stopped');
  }
}
