void main(List<String> args) {
  ///* ---------------------------------
  ///* Initializing late final variables
  ///* ---------------------------------

  late final bool isTeenager;
  const age = 12;

  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    isTeenager = false;
  }

  try {
    isTeenager = false;
    print('isTeenager = $isTeenager');
  } catch (ex) {
    print(ex);
  }
}
