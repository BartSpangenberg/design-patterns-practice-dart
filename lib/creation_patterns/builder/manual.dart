// !TODO In order to use a Manual and a Car, which use the same data strucutre the builder should store a CarSchema instead of a Car

class Manual {
  String brand = "unknown";
  String color = "factory color";
  int speed = 0;
  bool hasAutoDrive = false;

  void readManual() {
    print("You don't have to ");
  }
}
