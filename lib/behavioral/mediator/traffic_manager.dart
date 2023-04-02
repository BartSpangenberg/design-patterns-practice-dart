import 'package:design_patterns_practice_dart/behavioral/mediator/app_version_popup.dart';
import 'package:design_patterns_practice_dart/behavioral/mediator/leaderboard_popup.dart';
import 'package:design_patterns_practice_dart/behavioral/mediator/traffic_interface.dart';
import 'package:design_patterns_practice_dart/behavioral/mediator/traffic_manager_interface.dart';

class TrafficManager implements TrafficManagerInterface {
  List<Traffic> activeTraffic = [];

  @override
  void notify(Traffic sender) {
    if (activeTraffic.isNotEmpty) {
      print("Permisison to show declined");
      return;
    }

    activeTraffic.add(sender);
    sender.show();
  }

  @override
  void hide(Traffic sender) {
    if (sender is LeaderboardPopup) {
      activeTraffic = activeTraffic
          .where((element) => element is! LeaderboardPopup)
          .toList();
    } else if (sender is AppVersionPopup) {
      activeTraffic = activeTraffic
          .where((element) => element is! AppVersionPopup)
          .toList();
    }
  }
}
