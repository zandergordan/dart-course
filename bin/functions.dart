void main() {
  // Basic Function
  String takeFive(int number) {
    return '$number minus five equals ${number - 5}';
  }

  print(takeFive(23));

  // Named parameters
  namedParams({required int a, int b = 5}) {
    return a - b;
  }

  print(namedParams(a: 23, b: 10));

  // Arrow Function
  takeTen(int number) => '$number minus ten equals ${number - 10}';
  print(takeTen(23));

  // First-class functions
  callIt(Function callback) {
    var result = callback();

    return 'Result: $result';
  }

  zandersCallback({int a = 10, int b = 4}) => a - b;

  var cool = callIt(zandersCallback);
  print(cool);

  // Anonymous Function
  callIt(() => 'hola mundo!');
}
