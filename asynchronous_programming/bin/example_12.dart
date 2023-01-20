///* -----------------------
///* Absorbing Stream Errors
///* -----------------------

import 'dart:async';

void main(List<String> args) async {
  await for (final name in getNames().absorbErrorsUsingHandleError()) {
    print(name);
  }
  print('------------');

  await for (final name in getNames().absorbErrrorsUsingHandlers()) {
    print(name);
  }
  print('------------');

  await for (final name in getNames().absorbErrorUsingTransformer()) {
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

  Stream<T> absorbErrorUsingTransformer() {
    return transform(StreamErrorAbsorber());
  }
}

/// Custom error absorb transformer
class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();
    stream.listen(
      (event) {
        controller.sink.add(event);
      },
      onError: (_) {
        // do nothing
      },
      onDone: () {
        controller.close();
      },
    );
    return controller.stream;
  }
}
