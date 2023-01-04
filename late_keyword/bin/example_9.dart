void main(List<String> args) {
  ///* -----------------------------------------------------
  ///* Avoiding constructor initialization of Late variables
  ///* -----------------------------------------------------

  final johnDoe = Person(name: 'John Doe');
  final janeGoe = Person(name: 'Jane Goe');

  final oeFamilyWrong = WrongImplementationOfFamily(
    members: [
      johnDoe,
      janeGoe,
    ],
  );

  final oeFamilyCorrect = CorrectImplementationOfFamily(
    members: [
      johnDoe,
      janeGoe,
    ],
  );

  print(oeFamilyCorrect);
  print(oeFamilyCorrect.membersCount);

  print(oeFamilyWrong);
  print(oeFamilyWrong.membersCount);
}

class Person {
  final String name;

  Person({
    required this.name,
  });
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    ///! Late variables gets initialized from constructor initialization
    ///! so avoid using them like this
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class CorrectImplementationOfFamily {
  final Iterable<Person> members;

  ///? This is how you should be using late variables, if used as a class
  ///? parameter
  late int membersCount = getMembersCount();

  CorrectImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
