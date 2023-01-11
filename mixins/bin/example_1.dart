///* -----
///* Mixin
///* -----

void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10);
  person.walk(speed: 5);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping at speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking at speed of $speed');
    this.speed = speed;
  }
}

/// since CanJump and CanWalk was built onto HasSpeed, it must be there
/// before both of them, if they are used at all
class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}
