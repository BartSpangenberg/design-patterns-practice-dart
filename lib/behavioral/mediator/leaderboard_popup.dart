import 'package:design_patterns_practice_dart/behavioral/mediator/traffic_interface.dart';

class LeaderboardPopup implements Traffic {
  @override
  void show() {
    print("Showing leaderboard popup");
  }
}
