import 'dart:async';

///* -----------------------
///* Absorbing Stream Errors
///* -----------------------

void main(List<String> args) async {
  await for (final name in getNames().absorbErrorsUsingHandleError()) {
    print(name);
  }
  print('------------');
  await for (final name in getNames().absorbErrrorsUsingHandlers()) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  throw 'All out of names!';
}

extension AbsorbErrors<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() {
    return handleError((error, stackTrace) {
      // do nothing
    });
  }

  Stream<T> absorbErrrorsUsingHandlers() {
    return transform(StreamTransformer.fromHandlers(
      handleError: (error, stackTrace, sink) => sink.close(),
    ));
  }
}
