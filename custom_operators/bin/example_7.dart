///* -------------------------
///* Cross Data Type Operators
///* -------------------------

void main(List<String> args) {
  final mom = Person(name: 'Jane Mom');
  final dad = Person(name: 'John Dad');
  final son = Person(name: 'Jack Son');
  final daughter = Person(name: 'Jill Daughter');

  final whiskers = Pet(name: 'Whiskers Pet');

  final family = mom + dad;
  print(family);

  final withWhiskers = family & whiskers;
  print(withWhiskers);

  final withSon = withWhiskers + son;
  print(withSon);

  final withDaughter = withSon + daughter;
  print(withDaughter);

  final sonWithWhiskers = son & whiskers;
  print(sonWithWhiskers);

  final mergeFamilies = sonWithWhiskers ^ withDaughter;
  print(mergeFamilies);
}

class Person {
  final String name;

  const Person({required this.name});

  @override
  String toString() {
    return 'Person(name = $name)';
  }
}

class Pet {
  final String name;

  const Pet({required this.name});

  @override
  String toString() {
    return 'Pet(name = $name)';
  }
}

class Family {
  final List<Person> members;
  final List<Pet> pets;

  Family({
    required this.members,
    required this.pets,
  });

  @override
  String toString() {
    return 'Family(members = $members, pets = $pets)';
  }
}

extension on Person {
  Family operator +(Person other) {
    return Family(
      members: [this, other],
      pets: [],
    );
  }

  Family operator &(Pet other) {
    return Family(
      members: [this],
      pets: [other],
    );
  }
}

extension on Family {
  Family operator &(Pet other) {
    return Family(
      members: members,
      pets: [...pets, other],
    );
  }

  Family operator +(Person other) {
    return Family(
      members: [...members, other],
      pets: pets,
    );
  }

  Family operator ^(Family other) {
    return Family(
      members: [...members, ...other.members],
      pets: [...pets, ...other.pets],
    );
  }
}
