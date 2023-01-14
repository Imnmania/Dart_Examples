///* ---------------
///* Sum of Iterable
///* ---------------

void main(List<String> args) {
  final sumOfIntegers = [1, 2, 3].sum;
  print(sumOfIntegers);
  final sumOfDoubles = [1.1, 2.1, 3.1].sum;
  print(sumOfDoubles);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
