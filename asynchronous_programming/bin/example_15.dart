///* -----------------------------------------------
///* Broadcast Streams
///? Broadcast Stream can have multiple listeners
///? Non-Broadcast Stream can have only one listener
///* -----------------------------------------------

import 'dart:async';

void main(List<String> args) async {
  await nonBroadcastStreamExample();
  await broadcastStreamExample();
}

Future<void> nonBroadcastStreamExample() async {
  final controller = StreamController<String>();
  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');

  try {
    await for (final name in controller.stream) {
      print(name);
      await for (final nameAgain in controller.stream) {
        print(nameAgain);
      }
    }
  } catch (ex /* , st */) {
    print(ex);
    // print(st);
  }
}

Future<void> broadcastStreamExample() async {
  late final StreamController<String> controller;

  controller = StreamController<String>.broadcast();

  final sub1 = controller.stream.listen((name) {
    print('sub1: $name');
  });

  final sub2 = controller.stream.listen((name) {
    print('sub2: $name');
  });

  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');
  controller.close();

  controller.onCancel = () {
    print('onCancel');
    sub1.cancel();
    sub2.cancel();
  };
}
