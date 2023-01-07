///* -----------------------------------------
///* Extending ListBase to Create a Safer List
///* -----------------------------------------

import 'dart:collection';

void main(List<String> args) {
  /// lets create our new list data type

  ///? why
  try {
    final List<String> names = [];
    // print(names.first);
    // print(names.last);
    print(names[1]);
  } catch (ex) {
    print(ex);
  }

  ///? solution
  const notFound = 'NOT_FOUND';
  const defaultValue = 'DEFAULT_VALUE';

  final myList = SafeList(
    defaultValue: defaultValue,
    absentValue: notFound,
    values: ['a', 'b', 'c'],
  );
  print(myList);
  print(myList[3]);
  print(myList);
  myList.length = 5;
  print(myList);
  myList.length = 0;
  print(myList);
  myList.add('123');
  print(myList);
}

class SafeList<T> extends ListBase {
  final T defaultValue;
  final T absentValue;
  final List<T> _list;

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  operator [](int index) {
    if (index < _list.length) {
      return _list[index];
    } else {
      return absentValue;
    }
  }

  @override
  void operator []=(int index, value) {
    _list[index] = value;
  }

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(
          newLength - _list.length,
          defaultValue,
        ),
      );
    }
  }

  @override
  get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  get last => _list.isNotEmpty ? _list.last : absentValue;
}
