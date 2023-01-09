///* ------------
///* Enumerations
///* ------------

void main(List<String> args) {
  final woof = Animal(
    name: 'Woof',
    type: AnimalType.dog,
  );

  if (woof.type == AnimalType.cat) {
    print('Woof is a cat');
  } else {
    print('Woof is not a cat');
  }

  switch (woof.type) {
    case AnimalType.rabbit:
      print('this is a rabbit');
      break;
    case AnimalType.dog:
      print('this is a dog');
      break;
    case AnimalType.cat:
      print('this is a cat');
      break;
    case AnimalType.monkey:
      print('this is a monkey');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  cat,
  monkey,
}

class Animal {
  final String name;
  final AnimalType type;

  Animal({
    required this.name,
    required this.type,
  });
}
