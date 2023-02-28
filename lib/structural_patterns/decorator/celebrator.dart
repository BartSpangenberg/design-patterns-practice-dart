import 'package:design_patterns_practice_dart/structural_patterns/decorator/challenge.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/complete_challenge_decorator.dart';

class Celebrator extends CompleteChallengeDecorator {
  Celebrator({required super.decorator});

  @override
  void completeChallenge({required Challenge challenge}) {
    if (challenge.points > 0) {
      print("Congratulations you've received ${challenge.points} points!!");
    }
  }
}
