import 'dart:async';

void main() {
  print('1');

  scheduleMicrotask(() => print('2'));

  Future.delayed(const Duration(seconds: 1), () => print('3'));

  Future(() => print('4')).then((_) => print('5')).then((_) {
    print('6');
    scheduleMicrotask(() => print('7'));
  }).then((_) => print('8'));

  scheduleMicrotask(() => print('9'));

  Future(() => print('10')).then((_) => print('11')).then((_) => print('12'));

  Future(() => print('13'));

  scheduleMicrotask(() => print('14'));

  print('15');
}


// READ: 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
// READ SEQUENCE (R --> L): 15

// MICROTASK: 7  14 9 2

// EVENT: 3    13 12 10(tied to others) 8 4(tied to others)

// OUTCOME: 1 15 2 9 14 4 5 6 8 7 10 11 12 13 3

