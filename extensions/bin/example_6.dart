///* -----------------
///* Extension on Enum
///* -----------------

void main(List<String> args) {
  print(AnimalType.cat.nameContainsUpperCaseLetter);
  print(AnimalType.dog.nameContainsUpperCaseLetter);
  print(AnimalType.goldFish.nameContainsUpperCaseLetter);
}

enum AnimalType {
  cat,
  dog,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCaseLetter => name.contains(RegExp(r'[A-Z]'));
}
