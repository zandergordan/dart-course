void main(List<String> args) {
  // contains all the normal mathematical operators:
  print(2 * 3 == 9 - 7 + 4);

  // incrementors
  var x = 1;
  print(x++);
  print(x--);
  print(++x);

  // logical operators
  print(true || false);

  // assignment operator, only changes LHS value if null
  String? name;
  print(name);
  name ??= 'Guest';
  print(name);
  name ??= 'Zander';
  print(name);

  // ternary if/else expressions:
  String color = 'blue';
  var isThisBlue = color == 'blue' ? 'Yep, blue it is' : 'Nah, it aint blue';
  print(isThisBlue);

  // cascade
  var paint = Paint()..color = 'black';
  print(paint);
  print(paint.color);
}

class Paint {
  String color = 'blue';
}
