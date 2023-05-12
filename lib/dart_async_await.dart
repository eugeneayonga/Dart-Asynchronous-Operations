import 'dart:async';

Future main(List<String> arguments) async {
  late final int a;

  print('Start!');

  a = await Future(() => 1);

  print(a);

  print('End!');
}
