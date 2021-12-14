// if an object
void main(List<String> args) {
  var Bar = Foo();
  print(Bar.runtimeType); // Foo
  var x = Blam();
  print(x); // Instance of 'Blam'
  print(x.runtimeType); // Blam
  print(x.blamo); // Instance of 'Foo'
  print(x.blamo.runtimeType); // Foo
  print(x.blamy); // null
  print(x.blamy.runtimeType); // Null
  print(null is Object); // null is only object for which this is false
  print(Bar is Object); // Foo implicitly inherits from Object
  print(null
      is Object?); // Object? is the top class which Object and Null inherit from
}

class Foo {}

class Blam {
  Foo blamo = Foo();
  Foo? blamy; // ? allows blamo to be null
}
