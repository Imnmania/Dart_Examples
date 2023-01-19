///* ---------------------
///* Future Error Handling
///* ---------------------

void main(List<String> args) async {
  print(await getFullName(firstName: 'John', lastName: 'Doe'));
  print('-------------');
  try {
    print(await getFullName(firstName: 'John', lastName: ''));
  } on FirstOrLastNameMissingException catch (ex) {
    print(ex.message);
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) async {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  final String message;

  const FirstOrLastNameMissingException([
    this.message = 'First or last name missing!',
  ]);
}
