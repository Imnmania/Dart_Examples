///* ---------------------
///* Unmodifiable Map View
///* ---------------------

import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {
      'street': '1234 street',
      'city': 'California',
    },
  };
  info.addAll(
    {'phone': '123-123-123'},
  );
  print(info);

  try {
    final info2 = UnmodifiableMapView(info);
    info2.addAll(
      {'phone': '123-123-123'},
    );
    print(info2);
  } catch (ex) {
    print(ex);
  }
}
