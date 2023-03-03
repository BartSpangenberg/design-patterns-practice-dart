import 'package:design_patterns_practice_dart/structural_patterns/bridge/abstraction/activity_manager.dart';
import 'package:design_patterns_practice_dart/structural_patterns/bridge/abstraction/enhanced_activity_manager.dart';
import 'package:design_patterns_practice_dart/structural_patterns/bridge/implementation/activity.dart';
import 'package:design_patterns_practice_dart/structural_patterns/bridge/implementation/basic_activity.dart';
import 'package:design_patterns_practice_dart/structural_patterns/bridge/implementation/gps_activity.dart';

main() {
  final Activity basicActivity = BasicActivity({
    "points": 5.0,
  });
  final Activity gpsActivity = GpsActivity({
    "pointsPerMeter": 0.001,
    "metersWalked": 7000,
  });

  final ActivityManager activityManager =
      ActivityManager(activity: basicActivity);
  final num pointsEarnedChallengeOne = activityManager.getPoints();
  print("1: $pointsEarnedChallengeOne");
  activityManager.changeActivity(newActivity: gpsActivity);
  final num pointsEarnedChallengeTwo = activityManager.getPoints();
  print("2: $pointsEarnedChallengeTwo");
  activityManager.getTotalPoints();

  final EnhancedActivityManager enhancedActivityManager =
      EnhancedActivityManager(activity: basicActivity);
  final num pointsEarnedChallengeThree =
      enhancedActivityManager.getDoublePoints();
  print("3: $pointsEarnedChallengeThree");
  enhancedActivityManager.changeActivity(newActivity: gpsActivity);
  final num pointsEarnedChallengeFour =
      enhancedActivityManager.getDoublePoints();
  print("4: $pointsEarnedChallengeFour");
  enhancedActivityManager.getTotalPoints();
}
