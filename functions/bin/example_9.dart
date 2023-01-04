///* -----------------------------------------
///* Optionality of required named parameters
///* -----------------------------------------

void main(List<String> args) {
  doSomethingWithAge(age: null);
  doSomethingWithAge(age: 42);
}

void doSomethingWithAge({
  required int? age,
}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years, you will be $in2Years years old');
  } else {
    print('You did not tell me your age');
  }
}
