///* ---------------------------------------------
///* Subtracting an Iterable from Another Iterable
///* ---------------------------------------------

void main(List<String> args) {
  print([1, 2, 3] - [2]);
  print(['a', 'b', 'c'] - ['a', 'c']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) {
    return where((element) => !other.contains(element));
  }
}
