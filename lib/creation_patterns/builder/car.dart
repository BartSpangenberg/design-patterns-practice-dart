class Car {
  String brand = "unknown";
  String color = "factory color";
  int speed = 0;
  bool hasAutoDrive = false;

  void showcaseCar() {
    print(
      "This is a $color $brand ${hasAutoDrive ? "with" : "without"} auto-drive, can make speed of $speed km/h.",
    );
  }
}
