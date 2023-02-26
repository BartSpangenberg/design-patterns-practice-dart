import 'package:design_patterns_practice_dart/creation_patterns/builder/car_builder.dart';

class CarDirector {
  CarBuilder builder;

  CarDirector({required this.builder});

  void setBuilder({required CarBuilder builder}) {
    builder = builder;
  }

  buildCar({required String color}) {
    builder.setBrand();
    builder.setSpeed();
    builder.setColor(color: color);
  }

  buildAutoDrivingCar({required String color}) {
    builder.setBrand();
    builder.setSpeed();
    builder.setColor(color: color);
    builder.setHasAutoDrive();
  }
}
