///* ------------------------------------
///* Constrained Generic Type Definitions
///* ------------------------------------

void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };

  const brotherAndSisterAndFish = {
    'brother': Person(),
    'sister': Person(),
    'fishy': Fish(),
  };

  final allValues = [
    momAndDad,
    brotherAndSisterAndFish,
  ];
  print(allValues);
  describe(allValues);
}

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();

  @override
  void breathe() {
    print('Person is breathing...');
  }
}

class Fish with CanBreathe {
  const Fish();

  @override
  void breathe() {
    print('Fish is breathing');
  }
}
