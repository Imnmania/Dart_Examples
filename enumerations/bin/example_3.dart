///* -------------------
///* Switch Enumerations
///* -------------------

void main(List<String> args) {
  final whiskers = AnimalType.cat;

  switch (whiskers) {
    case AnimalType.cat:
      print('whisker is a cat');
      break;
    default:
      print('whisker is not a cat');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}
