import 'dart:isolate';

void main(
  List<String> args,
  SendPort sp,
) {
  sp.send('Hello world!');
}
