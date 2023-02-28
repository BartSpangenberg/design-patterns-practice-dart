import 'package:design_patterns_practice_dart/structural_patterns/decorator/challenge.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/complete_challenge_interface.dart';
import 'package:design_patterns_practice_dart/structural_patterns/decorator/main.dart';

class ChallengeCompletor implements CompleteChallengeInterface {
  @override
  void completeChallenge({required Challenge challenge}) {
    print("${challenge.points} have been added to $userId");
    challenge.datesCompleted.add(DateTime.now());
  }
}
