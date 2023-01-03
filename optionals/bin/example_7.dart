void main(List<String> args) {
  final String? firstName = null;
  try {
    ///! Don't do this in production
    ///! may lead to program crash 50% of the time
    print(firstName!);
  } catch (ex) {
    print(ex);
  }
}
