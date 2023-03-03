import 'package:design_patterns_practice_dart/structural_patterns/bridge/abstraction/activity_manager.dart';

class EnhancedActivityManager extends ActivityManager {
  EnhancedActivityManager({required super.activity});

  num getDoublePoints() {
    final num points = activity.finish() * 2;
    totalPoints += points;
    return points;
  }
}
