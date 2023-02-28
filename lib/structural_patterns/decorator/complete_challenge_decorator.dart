import 'package:design_patterns_practice_dart/structural_patterns/decorator/challenge.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/complete_challenge_interface.dart';

class CompleteChallengeDecorator implements CompleteChallengeInterface {
  late CompleteChallengeInterface _decorator;

  CompleteChallengeDecorator({required CompleteChallengeInterface decorator}) {
    _decorator = decorator;
  }

  @override
  void completeChallenge({required Challenge challenge}) {}
}
