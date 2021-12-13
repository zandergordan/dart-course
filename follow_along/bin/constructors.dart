/* this class defines default x and y coordinates, but we actually can not make 
any other points beside the origin point, because we did not define a constructor,
so the only constructor available is the default one with no arguments. */
class Point1 {
  double x = 0;
  double y = 0;
}

/* although this class has default values for x and y instance variables, we
actually can not make an instance with these defaults by just calling Point(),
as the constructor we defined has 2 required positional arguments.
*/
class Point2 {
  double x = 0;
  double y = 0;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point2(this.x, this.y);
}

/* We are now able to instantiate a Point3 with either no arguments or with
arguments, but the no argument option does not have the expected behavior.
The instance variables will be given null variables when Point3() is called.
*/
class Point3 {
  double? x = 0;
  double? y = 0;

  // wrapping function arguments in [] marks them as optional, but if they are
  // not provided they are null
  Point3([this.x, this.y]);
}

/* We are now achieving our goal of creating a Point class which can be instantiated
with default x and y coordinates of 0 if no arguments are passed, but also being
able to pass the coordinates if we want. However, there are now at least 2
issues. The first is stylistic, in that we define the class with the instance
variables x and y being declared as nullable, but the logic of the constructor
function actually makes it impossible to give them null values, which is confusing.
Second, if someone calls Point4(null, null), they end up with the same result
as Point4(0,0) or Point4(): this is an example of making it easy for errors to
pass silently.
*/
class Point4 {
  double? x = 0;
  double? y = 0;

  Point4({double? x, double? y}) {
    if (x != null) this.x = x;
    if (x != null) this.y = y;
  }
}

/* the best solution, or at least the one in the dart docs, is to actually create
a separate named constructor for the origin point. This makes the code slightly
more lengthy than what we were trying to achieve, but it is much more explicit, and 
solves the problem in a way that maintains null safety.
*/
class Point5 {
  double x = 0;
  double y = 0;

  Point5(this.x, this.y);

  Point5.origin();
}

void main(List<String> args) {
  var foo = Point1();
  print(foo);
  print(foo.x);
  var bar = Point2(3, 4);
  print(bar);
  print(bar.x);
  var blam = Point3();
  print(blam);
  print(blam.x);
  var boom = Point4();
  print(boom);
  print(boom.x);
  var boom2 = Point4(x: 7, y: 3);
  print(boom2);
  print(boom2.x);
  var boom3 = Point4(x: null, y: null);
  print(boom3);
  print(boom3.x);
  var finalPoint = Point5(2, 2);
  print(finalPoint);
  print(finalPoint.x);
  var originPoint = Point5.origin();
  print(originPoint);
  print(originPoint.x);
}
