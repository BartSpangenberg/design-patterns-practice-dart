import 'package:design_patterns_practice_dart/behavioral/mediator/traffic_interface.dart';

abstract class TrafficManagerInterface {
  void notify(Traffic sender);
  void hide(Traffic sender);
}
