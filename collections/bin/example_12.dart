///* ---------------------------------
///* Spread Operators with Collections
///* ---------------------------------

void main(List<String> args) {
  addToArrayWrong();
  print('--------------');
  addToArrayRight();
  print('--------------');
  addToDictionaryWrong();
  print('--------------');
  addToDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];
  final allNamesRight = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesRight);
}

void addToDictionaryWrong() {
  try {
    const info = {
      'name': 'Foo',
      'age': 20,
    };
    final result = info;
    result.addAll({'weight': 80});
    print(result);
  } catch (ex) {
    print(ex);
  }
}

void addToDictionaryRight() {
  try {
    const info = {
      'name': 'Foo',
      'age': 20,
    };
    final result = {...info};
    result.addAll({'weight': 80});
    print(result);
  } catch (ex) {
    print(ex);
  }
}
