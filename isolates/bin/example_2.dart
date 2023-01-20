///* ---------------------
///* Isolate Communication
///* ---------------------

import 'dart:isolate';
import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  do {
    stdout.write('Say something: ');
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);
      default:
        final msg = await getMessage(line!);
        stdout.writeln(msg);
    }
  } while (true);
}

const messageAndResponses = {
  '': 'Ask me a question like "How are you?"',
  'Hello': 'Hi',
  'How are you?': 'Fine',
  'What are you doing?': 'Learning about Isolates in Dart',
  'Are you having fun?': 'Yeah definitely!',
};

Future<String> getMessage(String forGreeting) async {
  /// starting an isolate and giving it a sendport from a new receiveport
  final rp = ReceivePort();
  Isolate.spawn(_communicator, rp.sendPort);

  /// converting the receiveport as broadcast stream for an easy read of the
  /// received sendport and sending the actual message to the recieved sendport
  final broadcastRp = rp.asBroadcastStream();
  final SendPort communicatorSp = await broadcastRp.first;
  communicatorSp.send(forGreeting);

  /// receiving and returning the actual message to user
  return broadcastRp
      .takeWhile((element) => element is String)
      .cast<String>()
      .take(1)
      .first;
}

/// entrypoint
void _communicator(SendPort sp) async {
  /// sending a sendport from a new receiveport to receive a message later
  final rp = ReceivePort();
  sp.send(rp.sendPort);

  /// receiving message as stream of strings
  final messages = rp.takeWhile((element) => element is String).cast<String>();
  // final messages = rp.asBroadcastStream().cast<String>(); //? does the same thing

  /// sending new message according to received messages reply calculation
  await for (final message in messages) {
    for (final entry in messageAndResponses.entries) {
      if (entry.key.trim().toLowerCase() == message.trim().toLowerCase()) {
        sp.send(entry.value);
        continue;
      }
    }
    sp.send('I have no reponse to that!');
  }
}
