import 'dart:async';

void main(List<String> arguments) {
  // Stream.periodic(const Duration(seconds: 1), (x) => x).listen((print));
  // Stream.periodic(const Duration(seconds: 2), (x) => -x).listen((print));

  Stream.fromFutures([Future(() => 3), Future.value(2)]).listen((print));
}
