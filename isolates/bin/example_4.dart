// ignore_for_file: public_member_api_docs, sort_constructors_first
///* ------------------------------------------
///* Json Downloading and Parsing with Isolates
///* ------------------------------------------

import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  final rp = ReceivePort();
  Isolate.spawn(_parseJsonIsolateEntry, rp.sendPort);
  final todosStream = rp
      .takeWhile((element) => element is Iterable<Todo>)
      .cast<Iterable<Todo>>()
      .take(1);

  await for (final todos in todosStream) {
    print(todos);
  }
}

void _parseJsonIsolateEntry(SendPort sp) async {
  final client = HttpClient();
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/todos');

  final todos = await client
      .getUrl(uri)
      .then((req) => req.close())
      .then((res) => res.transform(utf8.decoder).join())
      .then((rawJson) => jsonDecode(rawJson) as List<dynamic>)
      .then((jsonList) => jsonList.map((e) => Todo.fromJson(e)));

  sp.send(todos);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'] as int,
        id = json['id'] as int,
        title = json['title'] as String,
        completed = json['completed'] as bool;

  @override
  String toString() {
    return 'Todo(userId: $userId, id: $id, title: $title, completed: $completed)';
  }
}
