///* -----------------------------
///* Limiting Mixins to Data Types
///* -----------------------------

void main(List<String> args) {
  /* final bla = Has2Feet();
  bla.run() //! does not exist */

  Human().run();
}

class Has2Feet {
  const Has2Feet();
}

/// mixin on a class
mixin CanRun on Has2Feet {
  void run() => print('$runtimeType is running...');
}

class Human extends Has2Feet with CanRun {
  const Human();
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}
