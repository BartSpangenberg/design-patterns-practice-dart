import 'package:design_patterns_practice_dart/creation_patterns/builder/car.dart';
import 'package:design_patterns_practice_dart/creation_patterns/builder/manual.dart';

abstract class CarBuilder {
  void reset();

  void setBrand();

  void setHasAutoDrive();

  void setSpeed();

  void setColor({required String color});

  Car getCar();

  Manual createManual();
}
