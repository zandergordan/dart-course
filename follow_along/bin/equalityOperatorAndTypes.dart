void main(List<String> args) {
  print(1 == 1.0); // true
  assert([1] == [1.0]); // false
}
/* raw numbers (ints and doubles) can be equal even though they have different
types, I think this is due to them sharing the superclass num. But any objects
containing them, like a list or map, will not evaluate to be equal, because one
has type List<int> while the other is List<double> */
