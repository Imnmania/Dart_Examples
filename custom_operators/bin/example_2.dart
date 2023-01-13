///* -----------------------
///* Multiplying an Iterable
///* -----------------------

void main(List<String> args) {
  final names = ['Seth', 'Kathy', 'Ethan', 'Megan'];
  print(names * 2);
  final result = names * 3;
  print(result);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
