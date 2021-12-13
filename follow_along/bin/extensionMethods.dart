void main(List<String> args) {
  'hola'.stringPrinter(); // prints "hola"
  StPrinter('g').stringPrinter(); // prints "g"
}

extension StPrinter on String {
  void stringPrinter() {
    print(this);
  }
}
