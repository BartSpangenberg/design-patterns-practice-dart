import 'package:design_patterns_practice_dart/behavioral/mediator/traffic_interface.dart';

class AppVersionPopup implements Traffic {
  @override
  void show() {
    print("Showing app version popup");
  }
}
