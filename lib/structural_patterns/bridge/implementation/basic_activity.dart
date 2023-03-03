import 'package:design_patterns_practice_dart/structural_patterns/bridge/implementation/activity.dart';

class BasicActivity implements Activity {
  late num points;

  BasicActivity(data) {
    points = data['points'] ?? 0;
  }

  @override
  num finish() {
    print("Basic finish runs");
    return points.toDouble();
  }
}
