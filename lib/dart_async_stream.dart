import 'dart:async';

void main(List<String> arguments) {
  Stream.periodic(const Duration(seconds: 5), (x) => x).listen((print));
  Stream.periodic(const Duration(seconds: 10), (x) => -x).listen((print));
}
