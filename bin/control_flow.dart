void main() {
  // CONDITIONALS

  String color = 'purple';

  if (color == 'blue') {
    //
  } else if (color == 'green') {
    //
  } else {
    // default
  }

  if (color == 'red') print('hello red!');

  // LOOPS

  for (var i = 0; i == 0.0; i++) {
    print(i);
    // break;
    // continue;
  }

  double i = 0.5;
  while (i < 5) {
    print(i);
    i++;
  }

  i = 0;
  do {
    print(i);
    i++;
  } while (i < 5);

  // Assert
  var txt = 'good';
  assert(txt == 'bam');
}
