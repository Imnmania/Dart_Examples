void main(List<String> args) {
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  if (lastName?.contains('Bar') ?? false) {
    print('last name contains Bar');
  }

  if (lastName?.contains('Bar') == true) {
    print('last name contains Bar');
  }
}
