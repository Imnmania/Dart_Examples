///* ------------------------
///* Collection Comprehension
///* ------------------------

void main(List<String> args) {
  ///? Set Comprehension
  final value = 'abracadabra';
  /* var result = '';
  for (final char in value.split('')) {
    if (char == 'a' || char == 'b' || char == 'c') {
      // do nothing
    } else {
      result += char;
    }
  } */

  var result = {
    for (final char in value.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<List<String>>();
  print(result);
  print('--------------');

  ///? List Comprehension
  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];
  final evenNumbersFunctional = allNumbers.where(
    (element) => element % 2 == 0,
  );

  print(evenNumbers);
  print(evenNumbersFunctional);
  print('--------------');

  ///? Map Comprehension
  final names = [
    'John Doe',
    'James Smith',
    'Alice Jones',
  ];
  final namesAndLengths = {
    for (final name in names) name: name.length,
  };
  print(namesAndLengths);
}
