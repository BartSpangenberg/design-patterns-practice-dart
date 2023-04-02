import 'package:design_patterns_practice_dart/behavioral/mediator/app_version_popup.dart';
import 'package:design_patterns_practice_dart/behavioral/mediator/leaderboard_popup.dart';
import 'package:design_patterns_practice_dart/behavioral/mediator/traffic_manager.dart';

void main() {
  final TrafficManager trafficManager = TrafficManager();

  final AppVersionPopup appVersionPopup = AppVersionPopup();
  final LeaderboardPopup leaderboardPopup = LeaderboardPopup();

  trafficManager.notify(appVersionPopup);
  trafficManager.notify(leaderboardPopup);

  // In a real app the hide method will be called inside the Traffic's action (for example at the end of the LeaderboarsPopup)
  trafficManager.hide(appVersionPopup);
  trafficManager.notify(leaderboardPopup);
}
