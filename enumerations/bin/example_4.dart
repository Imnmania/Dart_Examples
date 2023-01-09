///* ----------------------------------
///* Converting Strings to Enumerations
///* ----------------------------------

void main(List<String> args) {
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'horse'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('this is a rabbit');
      break;
    case AnimalType.dog:
      print('this is a dog');
      break;
    case AnimalType.cat:
      print('this is a cat');
      break;
    default:
      print('unknown type');
      break;
  }
}

AnimalType? animalType({
  required String fromStr,
}) {
  try {
    return AnimalType.values.firstWhere(
      (element) => element.name == fromStr,
    );
  } catch (ex) {
    return null;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
}
