///* -----------------------
///* Unmodifiable List Views
///* -----------------------

import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['John', 'Jane'];
  names.add('Jack');

  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add('Hi');
  } catch (ex) {
    print(ex);
  }
}
