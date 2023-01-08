///* ------------------
///* Collection Package
///* ------------------

import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('------------------');
  testCanonicalizedMap();
  print('------------------');
  testCombinedIterableView();
  print('------------------');
  testCombinedListView();
  print('------------------');
  testCombinedMapView();
  print('------------------');
  testMapMerging();
}

///? ------------
///? Boolean List
///? ------------
void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);
  boolList[3] = true;
  if (boolList[3]) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}

///? -----------------
///? Canonicalized Map
///? -----------------
void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 123,
    'sex': 'male',
    'address': 'New York',
  };

  /// this is similar to hash value of the keys to create your own unique
  /// keys by manipulating the map keys
  final canonMap = CanonicalizedMap.from(
    info,
    (key) {
      // return key.length;
      return key.split('').first;
    },
  );

  print(canonMap);
}

///? ----------------------
///? Combined Iterable View
///? ----------------------
void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final List<int> two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];

  /// manage and combine multiple iterables into one
  /// can modify from inside, not outside
  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  print(combined);
  two.add(70);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(3));
}

///? ------------------
///? Combined List View
///? ------------------
/// CombinedListView is a view of a list of lists, and it is unmodifiable
void testCombinedListView() {
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];

  /// can modify from inside, not outside
  final combine = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);

  print(combine);

  if (combine.contains('Sven')) {
    print('Sven is here');
  }
  try {
    // combine.add('new name'); //! invalid
    swedishNames.add('Niloy');
    print(combine);
  } catch (ex) {
    print(ex);
  }
}

///? ------------------
///? Combined Map View
///? ------------------
void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};

  var combined = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combined);
  print(combined['a']);
  print(combined['b']);

  /// can modify from inside, not outside
  try {
    // combined['f'] = 199; //! invalid
    map3['e'] = 99;
    print(combined);
  } catch (ex) {
    print(ex);
  }
}

///? ------------
///? Merging Maps
///? ------------
void testMapMerging() {
  final info1 = {
    'name': 'John',
    'age': 123,
    'sex': 'male',
    'address': 'New York',
  };

  final info2 = {
    'name': 'Jane',
    'age': 321,
    'sex': 'female',
    'address': 'York New',
    'weight': 90,
  };

  /// in case of duplicate, takes the last key/values
  final merge = mergeMaps(info1, info2);
  print(merge);

  /// we can override this behaviour by using a third parameter
  final merge2 = mergeMaps(
    info1,
    info2,
    value: (p0, p1) => p0,
  );
  print(merge2);
}
