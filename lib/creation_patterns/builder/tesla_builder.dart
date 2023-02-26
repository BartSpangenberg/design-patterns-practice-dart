import 'package:design_patterns_practice_dart/creation_patterns/builder/car.dart';
import 'package:design_patterns_practice_dart/creation_patterns/builder/car_builder.dart';
import 'package:design_patterns_practice_dart/creation_patterns/builder/manual.dart';

class TeslaBuilder implements CarBuilder {
  Car _car = Car();

  @override
  void reset() {
    _car = Car();
  }

  @override
  void setBrand() {
    _car.brand = "Tesla";
  }

  @override
  void setColor({required String color}) {
    _car.color = color;
  }

  @override
  void setHasAutoDrive() {
    _car.hasAutoDrive = true;
  }

  @override
  void setSpeed() {
    _car.speed = 250;
  }

  @override
  Car getCar() {
    final Car result = _car;
    reset();
    return result;
  }

  // Manual is not functional in this example
  @override
  Manual createManual() {
    return Manual();
  }
}
