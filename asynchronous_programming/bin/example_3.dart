///* ---------------
///* Future Chaining
///* ---------------

void main(List<String> args) async {
  /* final length = await calculateLength(await getFullName());
  print(length); */

  final length = await getFullName().then(
    (value) => calculateLength(value),
  );
  print(length);
}

Future<String> getFullName() {
  return Future.delayed(
    const Duration(seconds: 1),
    () {
      return 'John Snow';
    },
  );
}

Future<int> calculateLength(String value) {
  return Future.delayed(
    const Duration(seconds: 1),
    () {
      return value.length;
    },
  );
}
