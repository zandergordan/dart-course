void main() {
  // Basic Math

  1 + 2 - 3 * 4 / 5;

  // Logic
  1 == 1;
  1 < 2;
  (1 >= 1) || ('a' == 'b');

  var x = 1;
  x++; // x = x + 1
  x--; // x = x - 1

  // Assignment
  String? name;
  // alternately:
  var z = name ?? 'guest';
  // which is short for:
  if (name == null) {
    var z = 'guest';
  } else {
    var z = name;
  }

  // Ternary
  String color = 'blue';
  var isThisBlue = color == 'blue' ? 'Yep, blue it is' : 'Nah, it aint blue';

  // Cascade

  dynamic Paint;

  // var paint = Paint();
  // paint.color = 'black';
  // paint.strokeCap = 'round';
  // paint.strokeWidth = 5.0;

  var paint = Paint()
    ..color = 'black'
    ..strokeCap = 'round'
    ..strokeWidth = 5.0;

  // Typecast
  print(23 as String);
}
