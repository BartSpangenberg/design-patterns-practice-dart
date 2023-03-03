import 'package:design_patterns_practice_dart/structural_patterns/bridge/implementation/activity.dart';

class ActivityManager {
  Activity activity;
  num totalPoints = 0;

  String _privateVariable = "Private, only accessible by superclass";
  // !Dart has no protected variables

  ActivityManager({required this.activity});

  changeActivity({required Activity newActivity}) {
    activity = newActivity;
  }

  num getPoints() {
    final num points = activity.finish();
    totalPoints += points;
    return points;
  }

  void getTotalPoints() {
    print("Total points earned: $totalPoints");
  }
}
