void main(List<String> args) {
  ///* -----------------------------------------------
  ///* constant values can be assigned to final values
  ///* but, final values can't be assigned to constant
  ///* -----------------------------------------------

  //! not allowed
  /* final age = 10;
  const age2 = age; */

  //? allowed
  const age = 10;
  final age2 = age;
  print(age2);
}
