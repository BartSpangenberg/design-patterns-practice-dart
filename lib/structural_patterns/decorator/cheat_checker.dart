import 'package:design_patterns_practice_dart/structural_patterns/decorator/challenge.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/complete_challenge_decorator.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/main.dart';

class CheatChecker extends CompleteChallengeDecorator {
  CheatChecker({required super.decorator});

  @override
  void completeChallenge({required Challenge challenge}) {
    final bool userIsCheating = cheatingUsers.contains(userId);

    if (userIsCheating) {
      challenge.points = 0;
      print("User caught cheating, points have been reduced to zero.");
    }
  }
}
