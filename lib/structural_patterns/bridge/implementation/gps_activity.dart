import 'package:design_patterns_practice_dart/structural_patterns/bridge/implementation/activity.dart';

class GpsActivity implements Activity {
  late num metersWalked;
  late num pointsPerMeter;

  GpsActivity(data) {
    metersWalked = data['metersWalked'] ?? 0;
    pointsPerMeter = data['pointsPerMeter'] ?? 0;
  }

  @override
  num finish() {
    print("Gps finish runs");
    return metersWalked * pointsPerMeter.toDouble();
  }
}
