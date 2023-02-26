import 'package:design_patterns_practice_dart/creation_patterns/builder/car.dart';
import 'package:design_patterns_practice_dart/creation_patterns/builder/car_director.dart';
import 'package:design_patterns_practice_dart/creation_patterns/builder/ferrari_builder.dart';
import 'package:design_patterns_practice_dart/creation_patterns/builder/tesla_builder.dart';

main() {
  final TeslaBuilder teslaBuilder = TeslaBuilder();
  final FerrariBuilder ferrariBuilder = FerrariBuilder();

  final CarDirector carDirector = CarDirector(builder: teslaBuilder);

  carDirector.buildCar(color: "black");
  final Car tesla = teslaBuilder.getCar();

  carDirector.builder = ferrariBuilder;

  carDirector.buildCar(color: "red");
  final Car ferrari = ferrariBuilder.getCar();

  carDirector.buildAutoDrivingCar(color: "white");
  final Car ferrariWithAutoDrive = ferrariBuilder.getCar();

  tesla.showcaseCar();
  ferrari.showcaseCar();
  ferrariWithAutoDrive.showcaseCar();
}
