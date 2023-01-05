///* -----------------------------
///* Switching over String values
///* -----------------------------

import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your name or type "exit" => ');
    final input = stdin.readLineSync();
    if (input == 'exit') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('Invalid name, Try again!!!');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'john':

        ///? this is called label
        continue toJane;
      toJane:
      case 'jane':
        stdout.writeln('Hello $input, you have a great name!');
        break;
      default:
        stdout.writeln('Hello $input!');
        break;
    }
  } while (true);
}
