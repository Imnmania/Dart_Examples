///* --------------
///* Simple Isolate
///* --------------

import 'dart:isolate';

void main(List<String> args) async {
  await for (final msg in getMessages().take(10)) {
    print(msg);
  }
}

Stream<String> getMessages() /* async* */ {
  final rp = ReceivePort();
  return Isolate.spawn(_getMessages, rp.sendPort)
      .asStream()
      .asyncExpand((_) => rp)
      .takeWhile((element) => element is String)
      .cast<String>();

  /* await Isolate.spawn(_getMessages, rp.sendPort);
  await for (final msg
      in rp.takeWhile((element) => element is String).cast<String>()) {
    yield msg;
  } */
}

void _getMessages(SendPort sp) async {
  await for (final now in Stream.periodic(Duration(milliseconds: 200), (_) {
    return DateTime.now().toIso8601String();
  })) {
    sp.send(now);
  }
}