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
}

class Foo {}

class Blam {
  Foo blamo = Foo();
  Foo? blamy; // ? allows blamo to be null
}
