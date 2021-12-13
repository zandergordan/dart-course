typedef IntList = List<int>; // creates a convenient alias
IntList x = [1, 2];

typedef ListMapper<X> = Map<X, List<X>>;
ListMapper<String> m1 = {};
ListMapper<int> m2 = {};
ListMapper<double> m3 = {};

void main(List<String> args) {
  print(x);
  print(x.runtimeType); // prints "List<int>"
  print(x is IntList); // prints "true"
  print(m1);
  print(m2);
  print(m1 == m2); // prints "false", because the types don't match
  print(m2 == m3);
}
