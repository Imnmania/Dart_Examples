///* -------
///* Future
///* -------

void main(List<String> args) async {
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getZipCode());
}

String getName() => 'Foo Bar';

Future<String> getUserName() async {
  // do some asynchronous work
  return 'John Doe';
}

Future<String> getAddress() {
  return Future.value('123 Main Street');
}

Future<String> getPhoneNumber() {
  return Future.delayed(
    const Duration(seconds: 1),
    () => '123-456-789',
  );
}

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

/// async keyword in this function doesn't contribute anything
/// since the return type is future
Future<String> getZipCode() async {
  return Future.delayed(
    const Duration(seconds: 1),
    () => '123456',
  );
}
